<?php
 // created: 2017-09-20 09:55:31
$layout_defs["Leads"]["subpanel_setup"]['leads_bh_autotransport_1'] = array (
  'order' => 100,
  'module' => 'bh_Autotransport',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_LEADS_BH_AUTOTRANSPORT_1_FROM_BH_AUTOTRANSPORT_TITLE',
  'get_subpanel_data' => 'leads_bh_autotransport_1',
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
