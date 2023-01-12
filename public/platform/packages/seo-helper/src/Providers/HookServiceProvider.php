<?php

namespace Botble\SeoHelper\Providers;

use Assets;
use BaseHelper;
use Botble\Base\Models\BaseModel;
use Botble\Page\Models\Page;
use Illuminate\Contracts\View\Factory;
use Illuminate\Support\ServiceProvider;
use Illuminate\Contracts\View\View;
use MetaBox;
use SeoHelper;

class HookServiceProvider extends ServiceProvider
{
    public function boot(): void
    {
        add_action(BASE_ACTION_META_BOXES, [$this, 'addMetaBox'], 12, 2);
        add_action(BASE_ACTION_PUBLIC_RENDER_SINGLE, [$this, 'setSeoMeta'], 56, 2);
    }

    /**
     * @param string $priority
     * @param BaseModel|null $data
     * @return bool
     */
    public function addMetaBox(string $priority, $data): bool
    {
        if ($priority == 'advanced' && ! empty($data) && in_array(get_class($data), config('packages.seo-helper.general.supported', []))) {
            if (get_class($data) == Page::class && BaseHelper::isHomepage($data->id)) {
                return false;
            }

            Assets::addScriptsDirectly('vendor/core/packages/seo-helper/js/seo-helper.js')
                ->addStylesDirectly('vendor/core/packages/seo-helper/css/seo-helper.css');

            MetaBox::addMetaBox(
                'seo_wrap',
                trans('packages/seo-helper::seo-helper.meta_box_header'),
                [$this, 'seoMetaBox'],
                get_class($data),
                'advanced',
                'low'
            );

            return true;
        }

        return false;
    }

    /**
     * @return Factory|View
     */
    public function seoMetaBox()
    {
        $meta = [
            'seo_title' => null,
            'seo_description' => null,
        ];

        $args = func_get_args();
        if (! empty($args[0]) && $args[0]->id) {
            $metadata = MetaBox::getMetaData($args[0], 'seo_meta', true);
        }

        if (! empty($metadata) && is_array($metadata)) {
            $meta = array_merge($meta, $metadata);
        }

        $object = $args[0];

        return view('packages/seo-helper::meta-box', compact('meta', 'object'));
    }

    /**
     * @param string $screen
     * @param BaseModel|null $object
     * @return bool
     */
    public function setSeoMeta(string $screen, $object): bool
    {
        if (get_class($object) == Page::class && BaseHelper::isHomepage($object->id)) {
            return false;
        }

        $object->loadMissing('metadata');
        $meta = $object->getMetaData('seo_meta', true);

        if (! empty($meta)) {
            if (! empty($meta['seo_title'])) {
                SeoHelper::setTitle($meta['seo_title']);
            }

            if (! empty($meta['seo_description'])) {
                SeoHelper::setDescription($meta['seo_description']);
            }
        }

        return true;
    }
}
