<?php
 // created: 2017-09-12 17:25:03
$layout_defs["bh_providers"]["subpanel_setup"]['bh_providers_aos_contracts_1'] = array (
  'order' => 100,
  'module' => 'AOS_Contracts',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_BH_PROVIDERS_AOS_CONTRACTS_1_FROM_AOS_CONTRACTS_TITLE',
  'get_subpanel_data' => 'bh_providers_aos_contracts_1',
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
