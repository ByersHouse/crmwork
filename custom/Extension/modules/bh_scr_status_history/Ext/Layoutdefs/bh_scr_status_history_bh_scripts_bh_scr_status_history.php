<?php
 // created: 2017-09-12 12:59:02
$layout_defs["bh_scr_status_history"]["subpanel_setup"]['bh_scr_status_history_bh_scripts'] = array (
  'order' => 100,
  'module' => 'bh_scripts',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_BH_SCR_STATUS_HISTORY_BH_SCRIPTS_FROM_BH_SCRIPTS_TITLE',
  'get_subpanel_data' => 'bh_scr_status_history_bh_scripts',
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
