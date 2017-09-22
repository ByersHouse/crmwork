<?php
 // created: 2017-09-21 15:18:33
$layout_defs["Leads"]["subpanel_setup"]['leads_leads_2leads_ida'] = array (
  'order' => 100,
  'module' => 'Leads',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_LEADS_LEADS_2_FROM_LEADS_R_TITLE',
  'get_subpanel_data' => 'leads_leads_2leads_ida',
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
