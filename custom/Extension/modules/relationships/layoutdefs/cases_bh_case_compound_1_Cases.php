<?php
 // created: 2017-09-20 11:38:59
$layout_defs["Cases"]["subpanel_setup"]['cases_bh_case_compound_1'] = array (
  'order' => 100,
  'module' => 'bh_case_compound',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_CASES_BH_CASE_COMPOUND_1_FROM_BH_CASE_COMPOUND_TITLE',
  'get_subpanel_data' => 'cases_bh_case_compound_1',
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
