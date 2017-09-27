<?php
global $manifest;
global $installdefs;

$manifest = array (
    'acceptable_sugar_versions' => array (
		  '6.1.*',
		  '6.2.*',
		  '6.3.*',
		  '6.4.*',
		  '6.5.*',
    ),
    'published_date' => '2011-09-19 14:00:00',

    'version' => '0.3',

    'author' => 'SugarTalk.net moded by William Kreider',
    'description' => 'Multi text fields for SugarCRM/SuiteCRM',
    'is_uninstallable' => true,
    'name' => 'MultiTextFields by SugarTalk moded by William Kreider',
    'type' => 'module',
    'remove_tables' => 'prompt',
);

$installdefs = array (

    'id' => 'MultiTextFields',
    'language'=> array(
        array(
			'from'=> '<basepath>/language/application.ru_ru.php',
			'to_module'=> 'application',
			'language'=>'ru_ru'
		),
		array(
			'from'=> '<basepath>/language/application.en_us.php',
			'to_module'=> 'application',
			'language'=>'en_us'
		),
		array(
			'from'=> '<basepath>/language/editcustomfields.ru_ru.php',
			'to_module'=> 'DynamicFields',
			'language'=>'ru_ru'
		),
		array(
			'from'=> '<basepath>/language/editcustomfields.en_us.php',
			'to_module'=> 'DynamicFields',
			'language'=>'en_us'
		),
		array(
			'from'=> '<basepath>/language/modulebuilder.ru_ru.php',
			'to_module'=> 'ModuleBuilder',
			'language'=>'ru_ru'
		),
		array(
			'from'=> '<basepath>/language/modulebuilder.en_us.php',
			'to_module'=> 'ModuleBuilder',
			'language'=>'en_us'
		),
    ),
    'copy' => array(
        array('from'=> '<basepath>/install/include/SugarFields/Fields/Multitextfield/',
              'to'=> 'include/SugarFields/Fields/Multitextfield/',
        ),
        array('from'=> '<basepath>/install/modules/DynamicFields/templates/Fields/TemplateMultitextfield.php',
              'to'=> 'modules/DynamicFields/templates/Fields/TemplateMultitextfield.php',
        ),
        array('from'=> '<basepath>/install/modules/DynamicFields/templates/Fields/Forms/multitextfield.php',
              'to'=> 'modules/DynamicFields/templates/Fields/Forms/multitextfield.php',
        ),
        array('from'=> '<basepath>/install/modules/DynamicFields/templates/Fields/Forms/multitextfield.tpl',
              'to'=> 'modules/DynamicFields/templates/Fields/Forms/multitextfield.tpl',
        ),
        array('from'=> '<basepath>/install/images',
              'to'=> 'custom/themes/default/images',
        ),
    ),
);
?>
