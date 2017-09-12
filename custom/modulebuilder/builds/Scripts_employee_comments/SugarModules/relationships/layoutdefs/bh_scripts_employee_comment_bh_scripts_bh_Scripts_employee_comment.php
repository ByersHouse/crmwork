<?php
 // created: 2017-09-12 14:55:17
$layout_defs["bh_Scripts_employee_comment"]["subpanel_setup"]['bh_scripts_employee_comment_bh_scripts'] = array (
  'order' => 100,
  'module' => 'bh_scripts',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_BH_SCRIPTS_EMPLOYEE_COMMENT_BH_SCRIPTS_FROM_BH_SCRIPTS_TITLE',
  'get_subpanel_data' => 'bh_scripts_employee_comment_bh_scripts',
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
