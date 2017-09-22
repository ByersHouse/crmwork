<?php
 // created: 2017-09-22 12:49:02
$layout_defs["Leads"]["subpanel_setup"]['leads_bh_passports_1'] = array (
  'order' => 100,
  'module' => 'bh_passports',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_LEADS_BH_PASSPORTS_1_FROM_BH_PASSPORTS_TITLE',
  'get_subpanel_data' => 'leads_bh_passports_1',
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
