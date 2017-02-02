<?php

if (!defined('BOOTSTRAP')) { die('Access denied'); }

if ($mode == 'view') {
    $page = Tygh::$app['view']->getTemplateVars('page');

    preg_match_all('#\[yandex_map\].*\[/yandex_map\]#', $page['description'], $maps);

    if ($maps) {
        foreach ($maps[0] as $map) {
            $map_render = str_replace(
                array('[yandex_map]', '[/yandex_map]'),
                array('<div class="yandex_map_wrapper" ', '></div>'),
                strip_tags($map)
            );

            $page['description'] = str_replace($map, $map_render, $page['description']);
        }

        Tygh::$app['view']->assign('page', $page);
    }
}