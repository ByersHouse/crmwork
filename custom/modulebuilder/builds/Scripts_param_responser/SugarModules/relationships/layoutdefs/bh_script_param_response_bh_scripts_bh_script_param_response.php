<?php
 // created: 2017-09-12 14:18:48
$layout_defs["bh_script_param_response"]["subpanel_setup"]['bh_script_param_response_bh_scripts'] = array (
  'order' => 100,
  'module' => 'bh_scripts',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_BH_SCRIPT_PARAM_RESPONSE_BH_SCRIPTS_FROM_BH_SCRIPTS_TITLE',
  'get_subpanel_data' => 'bh_script_param_response_bh_scripts',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);
