<?php
 // created: 2017-09-13 09:52:16
$layout_defs["bh_providers"]["subpanel_setup"]['bh_providers_bh_org_trade_points_1'] = array (
  'order' => 100,
  'module' => 'bh_org_trade_points',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_BH_PROVIDERS_BH_ORG_TRADE_POINTS_1_FROM_BH_ORG_TRADE_POINTS_TITLE',
  'get_subpanel_data' => 'bh_providers_bh_org_trade_points_1',
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
