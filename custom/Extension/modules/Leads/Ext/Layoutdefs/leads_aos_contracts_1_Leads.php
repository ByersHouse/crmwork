<?php
 // created: 2017-09-20 10:40:57
$layout_defs["Leads"]["subpanel_setup"]['leads_aos_contracts_1'] = array (
  'order' => 100,
  'module' => 'AOS_Contracts',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_LEADS_AOS_CONTRACTS_1_FROM_AOS_CONTRACTS_TITLE',
  'get_subpanel_data' => 'leads_aos_contracts_1',
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
