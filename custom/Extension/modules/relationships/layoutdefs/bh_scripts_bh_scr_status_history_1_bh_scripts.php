<?php
 // created: 2017-09-15 12:15:16
$layout_defs["bh_scripts"]["subpanel_setup"]['bh_scripts_bh_scr_status_history_1'] = array (
  'order' => 100,
  'module' => 'bh_scr_status_history',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_BH_SCRIPTS_BH_SCR_STATUS_HISTORY_1_FROM_BH_SCR_STATUS_HISTORY_TITLE',
  'get_subpanel_data' => 'bh_scripts_bh_scr_status_history_1',
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
