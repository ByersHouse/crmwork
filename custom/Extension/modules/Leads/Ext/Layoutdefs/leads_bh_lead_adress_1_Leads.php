<?php
 // created: 2017-09-20 14:47:10
$layout_defs["Leads"]["subpanel_setup"]['leads_bh_lead_adress_1'] = array (
  'order' => 100,
  'module' => 'bh_lead_adress',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_LEADS_BH_LEAD_ADRESS_1_FROM_BH_LEAD_ADRESS_TITLE',
  'get_subpanel_data' => 'leads_bh_lead_adress_1',
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
