<?php
 // created: 2017-09-15 09:10:26
$layout_defs["bh_Scripts_leadership_recommend"]["subpanel_setup"]['bh_scripts_leadership_recommend_bh_scripts'] = array (
  'order' => 100,
  'module' => 'bh_scripts',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_BH_SCRIPTS_LEADERSHIP_RECOMMEND_BH_SCRIPTS_FROM_BH_SCRIPTS_TITLE',
  'get_subpanel_data' => 'bh_scripts_leadership_recommend_bh_scripts',
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
