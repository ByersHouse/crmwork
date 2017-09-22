<?php
// created: 2017-09-21 15:18:33
$dictionary["Lead"]["fields"]["leads_leads_2"] = array (
  'name' => 'leads_leads_2',
  'type' => 'link',
  'relationship' => 'leads_leads_2',
  'source' => 'non-db',
  'module' => 'Leads',
  'bean_name' => 'Lead',
  'vname' => 'LBL_LEADS_LEADS_2_FROM_LEADS_L_TITLE',
  'id_name' => 'leads_leads_2leads_ida',
);
$dictionary["Lead"]["fields"]["leads_leads_2_name"] = array (
  'name' => 'leads_leads_2_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_LEADS_LEADS_2_FROM_LEADS_L_TITLE',
  'save' => true,
  'id_name' => 'leads_leads_2leads_ida',
  'link' => 'leads_leads_2',
  'table' => 'leads',
  'module' => 'Leads',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["Lead"]["fields"]["leads_leads_2leads_ida"] = array (
  'name' => 'leads_leads_2leads_ida',
  'type' => 'link',
  'relationship' => 'leads_leads_2',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_LEADS_LEADS_2_FROM_LEADS_R_TITLE',
);
