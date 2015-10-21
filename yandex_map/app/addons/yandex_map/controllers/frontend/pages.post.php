<?php

if (!defined('BOOTSTRAP')) { die('Access denied'); }

if ($mode == 'view') {
    $page = Tygh::$app['view']->getTemplateVars('page');
    $page['description'] = str_replace(array('[yandex_map]', '[/yandex_map]'), array('<div class="yandex_map" ', '></div>'), $page['description']);
    Tygh::$app['view']->assign('page', $page);
}