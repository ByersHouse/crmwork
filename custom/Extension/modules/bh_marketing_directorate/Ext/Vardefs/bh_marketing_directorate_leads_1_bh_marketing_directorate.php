<?php
// created: 2017-09-20 10:15:45
$dictionary["bh_marketing_directorate"]["fields"]["bh_marketing_directorate_leads_1"] = array (
  'name' => 'bh_marketing_directorate_leads_1',
  'type' => 'link',
  'relationship' => 'bh_marketing_directorate_leads_1',
  'source' => 'non-db',
  'module' => 'Leads',
  'bean_name' => 'Lead',
  'vname' => 'LBL_BH_MARKETING_DIRECTORATE_LEADS_1_FROM_LEADS_TITLE',
  'id_name' => 'bh_marketing_directorate_leads_1leads_idb',
);
$dictionary["bh_marketing_directorate"]["fields"]["bh_marketing_directorate_leads_1_name"] = array (
  'name' => 'bh_marketing_directorate_leads_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_MARKETING_DIRECTORATE_LEADS_1_FROM_LEADS_TITLE',
  'save' => true,
  'id_name' => 'bh_marketing_directorate_leads_1leads_idb',
  'link' => 'bh_marketing_directorate_leads_1',
  'table' => 'leads',
  'module' => 'Leads',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["bh_marketing_directorate"]["fields"]["bh_marketing_directorate_leads_1leads_idb"] = array (
  'name' => 'bh_marketing_directorate_leads_1leads_idb',
  'type' => 'link',
  'relationship' => 'bh_marketing_directorate_leads_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_BH_MARKETING_DIRECTORATE_LEADS_1_FROM_LEADS_TITLE',
);
