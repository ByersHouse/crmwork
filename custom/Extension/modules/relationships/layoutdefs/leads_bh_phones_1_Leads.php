<?php
 // created: 2017-09-25 17:47:01
$layout_defs["Leads"]["subpanel_setup"]['leads_bh_phones_1'] = array (
  'order' => 100,
  'module' => 'bh_phones',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_LEADS_BH_PHONES_1_FROM_BH_PHONES_TITLE',
  'get_subpanel_data' => 'leads_bh_phones_1',
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
