<?php

namespace Botble\Ecommerce\Repositories\Eloquent;

use Botble\Ecommerce\Models\GlobalOptionValue;
use Botble\Ecommerce\Repositories\Interfaces\GlobalOptionInterface;
use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Illuminate\Database\Eloquent\Model;

class GlobalOptionRepository extends RepositoriesAbstract implements GlobalOptionInterface
{
    /**
     * Create a new model.
     *
     * @param Model|array $data
     * @param array $condition
     * @return false|Model
     */
    public function createOrUpdate($data, array $condition = [])
    {
        $optionValues = [];
        if (is_array($data)) {
            if (empty($condition)) {
                $item = new $this->model();
            } else {
                $item = $this->getFirstBy($condition);
            }

            if (empty($item)) {
                $item = new $this->model();
            }

            $optionData = [
                'name' => $data['option_name'],
                'option_type' => $data['option_type'],
                'required' => $data['required'],
            ];

            $optionValues = $this->formatOptionValue($data);
            $item = $item->fill($optionData);
        } elseif ($data instanceof Model) {
            $item = $data;
        } else {
            return false;
        }

        $this->resetModel();

        if ($item->save()) {
            $item->values()->delete();
            $item->values()->saveMany($optionValues);

            return $item;
        }

        return false;
    }

    protected function formatOptionValue($data): array
    {
        $type = explode('\\', $data['option_type']);
        $type = end($type);
        $values = [];
        // TODO change const to Enum class
        $textTypeArr = ['Field'];

        if (in_array($type, $textTypeArr)) {
            /**
             * Only type text save 1-1 to db
             */
            $globalOptionValue = new GlobalOptionValue();
            $item['affect_price'] = $data['affect_price'];
            $item['affect_type'] = $data['affect_type'];
            $item['option_value'] = 'n/a';
            $globalOptionValue->fill($item);
            $values[] = $globalOptionValue;
        } else {
            /**
             * Other type save many option value to db
             */
            foreach ($data['options'] as $item) {
                $globalOptionValue = new GlobalOptionValue();
                $item['affect_price'] = (! empty($item['affect_price'])) ? $item['affect_price'] : 0;
                $item['option_value'] = $item['label'];
                $globalOptionValue->fill($item);
                $values[] = $globalOptionValue;
            }
        }

        return $values;
    }
}
