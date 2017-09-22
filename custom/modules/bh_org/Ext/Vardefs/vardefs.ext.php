<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-21 17:27:56
$dictionary["bh_org"]["fields"]["bh_org_bh_place_of_work_1"] = array (
  'name' => 'bh_org_bh_place_of_work_1',
  'type' => 'link',
  'relationship' => 'bh_org_bh_place_of_work_1',
  'source' => 'non-db',
  'module' => 'bh_place_of_work',
  'bean_name' => 'bh_place_of_work',
  'side' => 'right',
  'vname' => 'LBL_BH_ORG_BH_PLACE_OF_WORK_1_FROM_BH_PLACE_OF_WORK_TITLE',
);



$dictionary['bh_org']['fields']['legal_form'] = array (
       'required' => false,
       'name' => 'legal_form',
       'vname' => 'LBL_LEGALFORM',
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
       'len' => 50,
       'size' => '20',
       'options' => 'lead_orglegalform_list',
       'studio' => 'visible',
       'dependency' => false,
); 

$dictionary['bh_org']['fields']['org_size'] = array (
       'required' => false,
       'name' => 'org_size',
       'vname' => 'LBL_ORGSIZE',
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
       'len' => 50,
       'size' => '20',
       'options' => 'lead_orgsize_list',
       'studio' => 'visible',
       'dependency' => false,
);

$dictionary['bh_org']['fields']['org_sphere'] = array (
       'required' => false,
       'name' => 'org_sphere',
       'vname' => 'LBL_ORG_SPHERE',
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
       'len' => 50,
       'size' => '20',
       'options' => 'lead_orgsphere_list',
       'studio' => 'visible',
       'dependency' => false,
);

?>