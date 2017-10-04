<?php
 // created: 2017-10-04 12:59:22
$layout_defs["Leads"]["subpanel_setup"]['bh_marketing_directorate_leads_1'] = array (
  'order' => 100,
  'module' => 'bh_marketing_directorate',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_BH_MARKETING_DIRECTORATE_LEADS_1_FROM_BH_MARKETING_DIRECTORATE_TITLE',
  'get_subpanel_data' => 'bh_marketing_directorate_leads_1',
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
