<?php
 // created: 2017-09-15 14:36:15
$layout_defs["Leads"]["subpanel_setup"]['leads_bh_packet_activation_1'] = array (
  'order' => 100,
  'module' => 'bh_packet_activation',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_LEADS_BH_PACKET_ACTIVATION_1_FROM_BH_PACKET_ACTIVATION_TITLE',
  'get_subpanel_data' => 'leads_bh_packet_activation_1',
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
