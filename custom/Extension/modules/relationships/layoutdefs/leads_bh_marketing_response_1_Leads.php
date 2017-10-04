<?php
 // created: 2017-10-04 11:34:20
$layout_defs["Leads"]["subpanel_setup"]['leads_bh_marketing_response_1'] = array (
  'order' => 100,
  'module' => 'bh_marketing_response',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_LEADS_BH_MARKETING_RESPONSE_1_FROM_BH_MARKETING_RESPONSE_TITLE',
  'get_subpanel_data' => 'leads_bh_marketing_response_1',
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
