<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-10-03 13:22:00
$dictionary["bh_channels_impact"]["fields"]["bh_marketing_company_bh_channels_impact_1"] = array (
  'name' => 'bh_marketing_company_bh_channels_impact_1',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_channels_impact_1',
  'source' => 'non-db',
  'module' => 'bh_marketing_company',
  'bean_name' => 'bh_marketing_company',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_CHANNELS_IMPACT_1_FROM_BH_MARKETING_COMPANY_TITLE',
  'id_name' => 'bh_marketid0c7company_ida',
);
$dictionary["bh_channels_impact"]["fields"]["bh_marketing_company_bh_channels_impact_1_name"] = array (
  'name' => 'bh_marketing_company_bh_channels_impact_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_CHANNELS_IMPACT_1_FROM_BH_MARKETING_COMPANY_TITLE',
  'save' => true,
  'id_name' => 'bh_marketid0c7company_ida',
  'link' => 'bh_marketing_company_bh_channels_impact_1',
  'table' => 'bh_marketing_company',
  'module' => 'bh_marketing_company',
  'rname' => 'name',
);
$dictionary["bh_channels_impact"]["fields"]["bh_marketid0c7company_ida"] = array (
  'name' => 'bh_marketid0c7company_ida',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_channels_impact_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_CHANNELS_IMPACT_1_FROM_BH_CHANNELS_IMPACT_TITLE',
);



$dictionary["bh_channels_impact"]["fields"]["channel_impact"] = array(
    
       'required' => false,
       'name' => 'channel_impact',
       'vname' => 'LBL_CHANNEL_IMPACT',
       'type' => 'enum',
       'massupdate' => 0,
       'no_default' => false,
       'comments' => '',
       'help' => '',
       'importable' => 'true',
       'duplicate_merge' => 'disabled',
       'duplicate_merge_dom_value' => '0',
       'audited' => false,
       'inline_edit' => '',
       'reportable' => true,
       'unified_search' => false,
       'merge_filter' => 'disabled',
       'len' => 15,
       'size' => '20',
       'options' => 'channel_impact_list',
       'studio' => 'visible',
       'dependency' => false,
    
);


?>