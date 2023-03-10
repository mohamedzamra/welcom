<?php

namespace Database\Seeders;

use Botble\Base\Models\MetaBox as MetaBoxModel;
use Botble\Base\Supports\BaseSeeder;
use Botble\Language\Models\LanguageMeta;
use Botble\Page\Models\Page;
use Botble\Slug\Models\Slug;
use Faker\Factory;
use Html;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use MetaBox;
use SlugHelper;

class PageSeeder extends BaseSeeder
{
    public function run(): void
    {
        $faker = Factory::create();

        $pages = [
            [
                'name' => 'Homepage',
                'content' =>
                    Html::tag('div', '[simple-slider key="home-slider-1" is_autoplay="yes" autoplay_speed="5000"][/simple-slider]') .
                    Html::tag(
                        'div',
                        '[site-features icon1="general/icon-truck.png" title1="Free Shipping" subtitle1="Orders $50 or more" icon2="general/icon-purchase.png" title2="Free Returns" subtitle2="Within 30 days" icon3="general/icon-bag.png" title3="Get 20% Off 1 Item" subtitle3="When you sign up" icon4="general/icon-operator.png" title4="Support Center" subtitle4="24/7 amazing services"][/site-features]'
                    ) .
                    Html::tag(
                        'div',
                        '[featured-product-categories title="Top Categories"][/featured-product-categories]'
                    ) .
                    Html::tag('div', '[product-collections title="Exclusive Products"][/product-collections]') .
                    Html::tag(
                        'div',
                        '[theme-ads ads_1="IZ6WU8KUALYD" ads_2="ILSFJVYFGCPZ" ads_3="ILSDKVYFGXPH"][/theme-ads]'
                    ) .
                    Html::tag('div', '[featured-products title="Featured products"][/featured-products]') .
                    Html::tag('div', '[flash-sale show_popup="yes"][/flash-sale]') .
                    Html::tag(
                        'div',
                        '[featured-brands title="Featured Brands"][/featured-brands]'
                    ) .
                    Html::tag('div', '[product-category-products category_id="12"][/product-category-products]') .
                    Html::tag(
                        'div',
                        '[featured-news title="Visit Our Blog"][/featured-news]'
                    )
                ,
                'template' => 'homepage',
            ],
            [
                'name' => 'Homepage 2',
                'content' =>
                    Html::tag('div', '[simple-slider key="home-slider-2" is_autoplay="yes" autoplay_speed="5000"][/simple-slider]') .
                    Html::tag(
                        'div',
                        '[theme-ads ads_1="IZ6WU8KUALYD" ads_2="ILSFJVYFGCPZ" ads_3="ILSDKVYFGXPH"][/theme-ads]'
                    ) .
                    Html::tag('div', '[product-collections title="Exclusive Products"][/product-collections]') .
                    Html::tag('div', '[theme-ads ads_1="IZ6WU8KUALYF"][/theme-ads]') .
                    Html::tag('div', '[featured-products title="Featured products"][/featured-products]') .
                    Html::tag('div', '[flash-sale show_popup="yes"][/flash-sale]') .
                    Html::tag(
                        'div',
                        '[featured-brands title="Featured Brands"][/featured-brands]'
                    ) .
                    Html::tag(
                        'div',
                        '[featured-product-categories title="Top Categories"][/featured-product-categories]'
                    ) .
                    Html::tag('div', '[product-category-products category_id="12"][/product-category-products]') .
                    Html::tag(
                        'div',
                        '[featured-news title="Visit Our Blog"][/featured-news]'
                    ) .
                    Html::tag(
                        'div',
                        '[site-features icon1="general/icon-truck.png" title1="Free Shipping" subtitle1="Orders $50 or more" icon2="general/icon-purchase.png" title2="Free Returns" subtitle2="Within 30 days" icon3="general/icon-bag.png" title3="Get 20% Off 1 Item" subtitle3="When you sign up" icon4="general/icon-operator.png" title4="Support Center" subtitle4="24/7 amazing services"][/site-features]'
                    )
                ,
                'template' => 'homepage',
                'header_style' => 'header-style-2',
                'expanding_product_categories_on_the_homepage' => 'yes',
            ],
            [
                'name' => 'Homepage 3',
                'content' =>
                    Html::tag(
                        'div',
                        '[simple-slider key="home-slider-3" ads_1="ILSDKVYFGXPJ" ads_2="IZ6WU8KUALYE" is_autoplay="yes" autoplay_speed="5000"][/simple-slider]'
                    ) .
                    Html::tag('div', '[product-collections title="Exclusive Products"][/product-collections]') .
                    Html::tag(
                        'div',
                        '[theme-ads ads_1="IZ6WU8KUALYD" ads_2="ILSFJVYFGCPZ" ads_3="ILSDKVYFGXPH"][/theme-ads]'
                    ) .
                    Html::tag(
                        'div',
                        '[site-features icon1="general/icon-truck.png" title1="Free Shipping" subtitle1="Orders $50 or more" icon2="general/icon-purchase.png" title2="Free Returns" subtitle2="Within 30 days" icon3="general/icon-bag.png" title3="Get 20% Off 1 Item" subtitle3="When you sign up" icon4="general/icon-operator.png" title4="Support Center" subtitle4="24/7 amazing services"][/site-features]'
                    ) .
                    Html::tag(
                        'div',
                        '[featured-product-categories title="Top Categories"][/featured-product-categories]'
                    ) .
                    Html::tag('div', '[featured-products title="Featured products"][/featured-products]') .
                    Html::tag('div', '[flash-sale show_popup="yes"][/flash-sale]') .
                    Html::tag('div', '[theme-ads ads_1="IZ6WU8KUALYF"][/theme-ads]') .
                    Html::tag(
                        'div',
                        '[featured-brands title="Featured Brands"][/featured-brands]'
                    ) .
                    Html::tag('div', '[product-category-products category_id="12"][/product-category-products]') .
                    Html::tag(
                        'div',
                        '[featured-news title="Visit Our Blog"][/featured-news]'
                    )
                ,
                'template' => 'homepage',
                'header_style' => 'header-style-3',
            ],
            [
                'name' => 'Homepage 4',
                'content' =>
                    Html::tag('div', '[simple-slider key="home-slider-4" is_autoplay="yes" autoplay_speed="5000"][/simple-slider]') .
                    Html::tag(
                        'div',
                        '[site-features icon1="general/icon-truck.png" title1="Free Shipping" subtitle1="Orders $50 or more" icon2="general/icon-purchase.png" title2="Free Returns" subtitle2="Within 30 days" icon3="general/icon-bag.png" title3="Get 20% Off 1 Item" subtitle3="When you sign up" icon4="general/icon-operator.png" title4="Support Center" subtitle4="24/7 amazing services"][/site-features]'
                    ) .
                    Html::tag('div', '[product-collections title="Exclusive Products"][/product-collections]') .
                    Html::tag(
                        'div',
                        '[featured-product-categories title="Top Categories"][/featured-product-categories]'
                    ) .
                    Html::tag(
                        'div',
                        '[theme-ads ads_1="IZ6WU8KUALYD" ads_2="ILSFJVYFGCPZ" ads_3="ILSDKVYFGXPH"][/theme-ads]'
                    ) .
                    Html::tag('div', '[theme-ads ads_1="IZ6WU8KUALYF"][/theme-ads]') .
                    Html::tag('div', '[featured-products title="Featured products"][/featured-products]') .
                    Html::tag('div', '[flash-sale show_popup="yes"][/flash-sale]') .
                    Html::tag(
                        'div',
                        '[featured-brands title="Featured Brands"][/featured-brands]'
                    ) .
                    Html::tag('div', '[product-category-products category_id="12"][/product-category-products]') .
                    Html::tag(
                        'div',
                        '[featured-news title="Visit Our Blog"][/featured-news]'
                    )
                ,
                'template' => 'homepage',
                'header_style' => 'header-style-4',
            ],
            [
                'name' => 'Blog',
                'content' => Html::tag('p', '---'),
                'template' => 'blog-right-sidebar',
            ],
            [
                'name' => 'Contact',
                'content' => Html::tag('p', '[google-map]502 New Street, Brighton VIC, Australia[/google-map]') .
                    Html::tag('p', '[our-offices][/our-offices]') .
                    Html::tag('p', '[contact-form][/contact-form]'),
            ],
            [
                'name' => 'About us',
                'content' => Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500)) .
                    Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500))
                ,
            ],
            [
                'name' => 'Cookie Policy',
                'content' => Html::tag('h3', 'EU Cookie Consent') .
                    Html::tag(
                        'p',
                        'To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.'
                    ) .
                    Html::tag('h4', 'Essential Data') .
                    Html::tag(
                        'p',
                        'The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.'
                    ) .
                    Html::tag(
                        'p',
                        '- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.'
                    ) .
                    Html::tag(
                        'p',
                        '- XSRF-Token Cookie: Laravel automatically generates a CSRF "token" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.'
                    ),
            ],
            [
                'name' => 'Terms & Conditions',
                'content' => Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500)) .
                    Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500)),
            ],
            [
                'name' => 'Returns & Exchanges',
                'content' => Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500)) .
                    Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500)),
            ],
            [
                'name' => 'Shipping & Delivery',
                'content' => Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500)) .
                    Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500)),
            ],
            [
                'name' => 'Privacy Policy',
                'content' => Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500)) .
                    Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500)),
            ],
            [
                'name' => 'Blog Left Sidebar',
                'content' => Html::tag('p', '[blog-posts paginate="12"][/blog-posts]'),
                'template' => 'blog-left-sidebar',
            ],
            [
                'name' => 'FAQ',
                'content' => Html::tag('div', '[faqs][/faqs]'),
            ],
        ];

        Page::truncate();
        DB::table('pages_translations')->truncate();
        Slug::where('reference_type', Page::class)->delete();
        MetaBoxModel::where('reference_type', Page::class)->delete();
        LanguageMeta::where('reference_type', Page::class)->delete();

        foreach ($pages as $item) {
            $item['user_id'] = 1;

            if (! isset($item['template'])) {
                $item['template'] = 'default';
            }

            $page = Page::create(Arr::except(
                $item,
                ['header_style', 'expanding_product_categories_on_the_homepage']
            ));

            $headerStyle = isset($item['header_style']) ? $item['header_style'] : null;
            if ($headerStyle) {
                MetaBox::saveMetaBoxData($page, 'header_style', $headerStyle);
            }

            if (isset($item['expanding_product_categories_on_the_homepage'])) {
                MetaBox::saveMetaBoxData(
                    $page,
                    'expanding_product_categories_on_the_homepage',
                    $item['expanding_product_categories_on_the_homepage']
                );
            }

            Slug::create([
                'reference_type' => Page::class,
                'reference_id' => $page->id,
                'key' => Str::slug($page->name),
                'prefix' => SlugHelper::getPrefix(Page::class),
            ]);
        }

        $translations = [
            [
                'name' => 'Trang ch???',
                'content' =>
                    Html::tag('div', '[simple-slider key="slider-trang-chu-1" is_autoplay="yes" autoplay_speed="5000"][/simple-slider]') .
                    Html::tag(
                        'div',
                        '[site-features icon1="general/icon-truck.png" title1="Mi???n ph?? v???n chuy???n" subtitle1="Cho ????n h??ng t??? $50" icon2="general/icon-purchase.png" title2="Mi???n ph?? ?????i tr???" subtitle2="Trong v??ng 30 ng??y" icon3="general/icon-bag.png" title3="Gi???m 20% m???i 1 s???n ph???m" subtitle3="Khi b???n ????ng k?? th??nh vi??n" icon4="general/icon-operator.png" title4="H??? tr???" subtitle4="24/7 d???ch v??? tuy???t v???i"][/site-features]'
                    ) .
                    Html::tag(
                        'div',
                        '[featured-product-categories title="Danh m???c n???i b???t"][/featured-product-categories]'
                    ) .
                    Html::tag('div', '[product-collections title="S???n ph???m ?????c quy???n"][/product-collections]') .
                    Html::tag(
                        'div',
                        '[theme-ads ads_1="IZ6WU8KUALYD" ads_2="ILSFJVYFGCPZ" ads_3="ILSDKVYFGXPH"][/theme-ads]'
                    ) .
                    Html::tag('div', '[featured-products title="S???n ph???m n???i b???t"][/featured-products]') .
                    Html::tag('div', '[flash-sale show_popup="yes"][/flash-sale]') .
                    Html::tag(
                        'div',
                        '[featured-brands title="Th????ng hi???u n???i b???t"][/featured-brands]'
                    ) .
                    Html::tag('div', '[product-category-products category_id="12"][/product-category-products]') .
                    Html::tag(
                        'div',
                        '[featured-news title="Tin t???c m???i nh???t"][/featured-news]'
                    )
                ,
            ],
            [
                'name' => 'Trang ch??? 2',
                'content' =>
                    Html::tag('div', '[simple-slider key="slider-trang-chu-2" is_autoplay="yes" autoplay_speed="5000"][/simple-slider]') .
                    Html::tag(
                        'div',
                        '[theme-ads ads_1="IZ6WU8KUALYD" ads_2="ILSFJVYFGCPZ" ads_3="ILSDKVYFGXPH"][/theme-ads]'
                    ) .
                    Html::tag('div', '[product-collections title="S???n ph???m ?????c quy???n"][/product-collections]') .
                    Html::tag('div', '[theme-ads ads_1="IZ6WU8KUALYF"][/theme-ads]') .
                    Html::tag('div', '[featured-products title="S???n ph???m n???i b???t"][/featured-products]') .
                    Html::tag('div', '[flash-sale show_popup="yes"][/flash-sale]') .
                    Html::tag(
                        'div',
                        '[featured-brands title="Th????ng hi???u n???i b???t"][/featured-brands]'
                    ) .
                    Html::tag(
                        'div',
                        '[featured-product-categories title="Danh m???c n???i b???t"][/featured-product-categories]'
                    ) .
                    Html::tag('div', '[product-category-products category_id="12"][/product-category-products]') .
                    Html::tag(
                        'div',
                        '[featured-news title="Tin t???c m???i nh???t"][/featured-news]'
                    ) .
                    Html::tag(
                        'div',
                        '[site-features icon1="general/icon-truck.png" title1="Mi???n ph?? v???n chuy???n" subtitle1="Cho ????n h??ng t??? $50" icon2="general/icon-purchase.png" title2="Mi???n ph?? ?????i tr???" subtitle2="Trong v??ng 30 ng??y" icon3="general/icon-bag.png" title3="Gi???m 20% m???i 1 s???n ph???m" subtitle3="Khi b???n ????ng k?? th??nh vi??n" icon4="general/icon-operator.png" title4="H??? tr???" subtitle4="24/7 d???ch v??? tuy???t v???i"][/site-features]'
                    )
                ,
            ],
            [
                'name' => 'Trang ch??? 3',
                'content' =>
                    Html::tag(
                        'div',
                        '[simple-slider key="slider-trang-chu-3" ads_1="ILSDKVYFGXPJ" ads_2="IZ6WU8KUALYE" is_autoplay="yes" autoplay_speed="5000"][/simple-slider]'
                    ) .
                    Html::tag('div', '[product-collections title="S???n ph???m ?????c quy???n"][/product-collections]') .
                    Html::tag(
                        'div',
                        '[theme-ads ads_1="IZ6WU8KUALYD" ads_2="ILSFJVYFGCPZ" ads_3="ILSDKVYFGXPH"][/theme-ads]'
                    ) .
                    Html::tag(
                        'div',
                        '[site-features icon1="general/icon-truck.png" title1="Mi???n ph?? v???n chuy???n" subtitle1="Cho ????n h??ng t??? $50" icon2="general/icon-purchase.png" title2="Mi???n ph?? ?????i tr???" subtitle2="Trong v??ng 30 ng??y" icon3="general/icon-bag.png" title3="Gi???m 20% m???i 1 s???n ph???m" subtitle3="Khi b???n ????ng k?? th??nh vi??n" icon4="general/icon-operator.png" title4="H??? tr???" subtitle4="24/7 d???ch v??? tuy???t v???i"][/site-features]'
                    ) .
                    Html::tag(
                        'div',
                        '[featured-product-categories title="Danh m???c n???i b???t"][/featured-product-categories]'
                    ) .
                    Html::tag('div', '[featured-products title="S???n ph???m n???i b???t"][/featured-products]') .
                    Html::tag('div', '[flash-sale show_popup="yes"][/flash-sale]') .
                    Html::tag('div', '[theme-ads ads_1="IZ6WU8KUALYF"][/theme-ads]') .
                    Html::tag(
                        'div',
                        '[featured-brands title="Th????ng hi???u n???i b???t"][/featured-brands]'
                    ) .
                    Html::tag('div', '[product-category-products category_id="12"][/product-category-products]') .
                    Html::tag(
                        'div',
                        '[featured-news title="Tin t???c m???i nh???t"][/featured-news]'
                    )
                ,
            ],
            [
                'name' => 'Trang ch??? 4',
                'content' =>
                    Html::tag('div', '[simple-slider key="slider-trang-chu-4" is_autoplay="yes" autoplay_speed="5000"][/simple-slider]') .
                    Html::tag(
                        'div',
                        '[site-features icon1="general/icon-truck.png" title1="Mi???n ph?? v???n chuy???n" subtitle1="Cho ????n h??ng t??? $50" icon2="general/icon-purchase.png" title2="Mi???n ph?? ?????i tr???" subtitle2="Trong v??ng 30 ng??y" icon3="general/icon-bag.png" title3="Gi???m 20% m???i 1 s???n ph???m" subtitle3="Khi b???n ????ng k?? th??nh vi??n" icon4="general/icon-operator.png" title4="H??? tr???" subtitle4="24/7 d???ch v??? tuy???t v???i"][/site-features]'
                    ) .
                    Html::tag('div', '[product-collections title="S???n ph???m ?????c quy???n"][/product-collections]') .
                    Html::tag(
                        'div',
                        '[featured-product-categories title="Danh m???c n???i b???t"][/featured-product-categories]'
                    ) .
                    Html::tag(
                        'div',
                        '[theme-ads ads_1="IZ6WU8KUALYD" ads_2="ILSFJVYFGCPZ" ads_3="ILSDKVYFGXPH"][/theme-ads]'
                    ) .
                    Html::tag('div', '[theme-ads ads_1="IZ6WU8KUALYF"][/theme-ads]') .
                    Html::tag('div', '[featured-products title="S???n ph???m n???i b???t"][/featured-products]') .
                    Html::tag('div', '[flash-sale show_popup="yes"][/flash-sale]') .
                    Html::tag(
                        'div',
                        '[featured-brands title="Th????ng hi???u n???i b???t"][/featured-brands]'
                    ) .
                    Html::tag('div', '[product-category-products category_id="12"][/product-category-products]') .
                    Html::tag(
                        'div',
                        '[featured-news title="Tin t???c m???i nh???t"][/featured-news]'
                    )
                ,
            ],
            [
                'name' => 'Tin t???c',
                'content' => Html::tag('p', '---'),
            ],
            [
                'name' => 'Li??n h???',
                'content' => Html::tag('p', '[google-map]502 New Street, Brighton VIC, Australia[/google-map]') .
                    Html::tag('p', '[our-offices][/our-offices]') .
                    Html::tag('p', '[contact-form][/contact-form]'),
            ],
            [
                'name' => 'V??? ch??ng t??i',
                'content' => Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500)) .
                    Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500))
                ,
            ],
            [
                'name' => 'Ch??nh s??ch cookie',
                'content' => Html::tag('h3', 'EU Cookie Consent') .
                    Html::tag(
                        'p',
                        'To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.'
                    ) .
                    Html::tag('h4', 'Essential Data') .
                    Html::tag(
                        'p',
                        'The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.'
                    ) .
                    Html::tag(
                        'p',
                        '- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.'
                    ) .
                    Html::tag(
                        'p',
                        '- XSRF-Token Cookie: Laravel automatically generates a CSRF "token" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.'
                    ),
            ],
            [
                'name' => '??i???u ki???n v?? ??i???u kho???n',
                'content' => Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500)) .
                    Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500)),
            ],
            [
                'name' => 'Ch??nh s??ch tr??? h??ng',
                'content' => Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500)) .
                    Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500)),
            ],
            [
                'name' => 'Ch??nh s??ch v???n chuy???n',
                'content' => Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500)) .
                    Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500)),
            ],
            [
                'name' => 'Ch??nh s??ch b???o m???t',
                'content' => Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500)) .
                    Html::tag('p', $faker->realText(500)) . Html::tag('p', $faker->realText(500)),
            ],
            [
                'name' => 'Blog Sidebar Tr??i',
                'content' => Html::tag('p', '[blog-posts paginate="12"][/blog-posts]'),
            ],
            [
                'name' => 'C??u h???i th?????ng g???p',
                'content' => Html::tag('div', '[faqs][/faqs]'),
            ],
        ];

        foreach ($translations as $index => $item) {
            $item['lang_code'] = 'vi';
            $item['pages_id'] = $index + 1;

            DB::table('pages_translations')->insert($item);
        }
    }
}
