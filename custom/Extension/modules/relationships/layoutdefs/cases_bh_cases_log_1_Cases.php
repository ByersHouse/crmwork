<?php
 // created: 2017-09-14 17:20:31
$layout_defs["Cases"]["subpanel_setup"]['cases_bh_cases_log_1'] = array (
  'order' => 100,
  'module' => 'bh_cases_log',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_CASES_BH_CASES_LOG_1_FROM_BH_CASES_LOG_TITLE',
  'get_subpanel_data' => 'cases_bh_cases_log_1',
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
