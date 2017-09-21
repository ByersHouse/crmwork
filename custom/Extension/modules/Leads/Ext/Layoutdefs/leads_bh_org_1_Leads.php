<?php
 // created: 2017-09-20 14:15:33
$layout_defs["Leads"]["subpanel_setup"]['leads_bh_org_1'] = array (
  'order' => 100,
  'module' => 'bh_org',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_LEADS_BH_ORG_1_FROM_BH_ORG_TITLE',
  'get_subpanel_data' => 'leads_bh_org_1',
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
