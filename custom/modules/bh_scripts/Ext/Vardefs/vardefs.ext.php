<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-10-05 15:31:14
$dictionary["bh_scripts"]["fields"]["bh_marketing_company_bh_scripts_1"] = array (
  'name' => 'bh_marketing_company_bh_scripts_1',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_scripts_1',
  'source' => 'non-db',
  'module' => 'bh_marketing_company',
  'bean_name' => 'bh_marketing_company',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_SCRIPTS_1_FROM_BH_MARKETING_COMPANY_TITLE',
  'id_name' => 'bh_marketing_company_bh_scripts_1bh_marketing_company_ida',
);
$dictionary["bh_scripts"]["fields"]["bh_marketing_company_bh_scripts_1_name"] = array (
  'name' => 'bh_marketing_company_bh_scripts_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_SCRIPTS_1_FROM_BH_MARKETING_COMPANY_TITLE',
  'save' => true,
  'id_name' => 'bh_marketing_company_bh_scripts_1bh_marketing_company_ida',
  'link' => 'bh_marketing_company_bh_scripts_1',
  'table' => 'bh_marketing_company',
  'module' => 'bh_marketing_company',
  'rname' => 'name',
);
$dictionary["bh_scripts"]["fields"]["bh_marketing_company_bh_scripts_1bh_marketing_company_ida"] = array (
  'name' => 'bh_marketing_company_bh_scripts_1bh_marketing_company_ida',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_scripts_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_SCRIPTS_1_FROM_BH_MARKETING_COMPANY_TITLE',
);


// created: 2017-09-15 11:59:08
$dictionary["bh_scripts"]["fields"]["bh_scripts_bh_scripts_employee_comment_1"] = array (
  'name' => 'bh_scripts_bh_scripts_employee_comment_1',
  'type' => 'link',
  'relationship' => 'bh_scripts_bh_scripts_employee_comment_1',
  'source' => 'non-db',
  'module' => 'bh_Scripts_employee_comment',
  'bean_name' => 'bh_Scripts_employee_comment',
  'side' => 'right',
  'vname' => 'LBL_BH_SCRIPTS_BH_SCRIPTS_EMPLOYEE_COMMENT_1_FROM_BH_SCRIPTS_EMPLOYEE_COMMENT_TITLE',
);


// created: 2017-09-15 12:04:22
$dictionary["bh_scripts"]["fields"]["bh_scripts_bh_scripts_leadership_recommend_1"] = array (
  'name' => 'bh_scripts_bh_scripts_leadership_recommend_1',
  'type' => 'link',
  'relationship' => 'bh_scripts_bh_scripts_leadership_recommend_1',
  'source' => 'non-db',
  'module' => 'bh_Scripts_leadership_recommend',
  'bean_name' => 'bh_Scripts_leadership_recommend',
  'side' => 'right',
  'vname' => 'LBL_BH_SCRIPTS_BH_SCRIPTS_LEADERSHIP_RECOMMEND_1_FROM_BH_SCRIPTS_LEADERSHIP_RECOMMEND_TITLE',
);


// created: 2017-09-15 12:10:17
$dictionary["bh_scripts"]["fields"]["bh_scripts_bh_script_param_response_1"] = array (
  'name' => 'bh_scripts_bh_script_param_response_1',
  'type' => 'link',
  'relationship' => 'bh_scripts_bh_script_param_response_1',
  'source' => 'non-db',
  'module' => 'bh_script_param_response',
  'bean_name' => 'bh_script_param_response',
  'side' => 'right',
  'vname' => 'LBL_BH_SCRIPTS_BH_SCRIPT_PARAM_RESPONSE_1_FROM_BH_SCRIPT_PARAM_RESPONSE_TITLE',
);


$dictionary['bh_scripts']['fields']['script_status'] = array (
         'required' => false,
          'name' => 'script_status',
          'vname' => 'LBL_SCRIPT_STATUS',
          'type' => 'enum',
          'massupdate' => 0,
          'no_default' => false,
          'comments' => '',
          'help' => '',
          'importable' => 'true',
          'duplicate_merge' => 'disabled',
          'duplicate_merge_dom_value' => '0',
          'audited' => false,
          'inline_edit' => true,
          'reportable' => true,
          'unified_search' => false,
          'merge_filter' => 'disabled',
          'options' => 'script_status_list',
          'studio' => 'visible',
          'size' => '20',
          'enable_range_search' => false,
    );

$dictionary['bh_scripts']['fields']['script_type'] = array (
    'required' => false,
    'name' => 'script_type',
    'vname' => 'LBL_SCRIPT_TYPE',
    'type' => 'enum',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'options' => 'script_type_list',
    'studio' => 'visible',
    'size' => '20',
    'enable_range_search' => false,
);

$dictionary['bh_scripts']['fields']['script_impact'] = array (
    'required' => false,
    'name' => 'script_impact',
    'vname' => 'LBL_SCRIPT_IMPACT',
    'type' => 'enum',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'options' => 'script_impact_list',
    'studio' => 'visible',
    'size' => '20',
    'enable_range_search' => false,
);


$dictionary['bh_scripts']['fields']['script_rate_effort'] = array (
    'required' => false,
    'name' => 'script_rate_effort',
    'vname' => 'LBL_RATE_EFFORT',
    'type' => 'int',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'size' => '20',
    'enable_range_search' => false,
);
$dictionary['bh_scripts']['fields']['activation'] = array (
    'required' => false,
    'name' => 'activation',
    'vname' => 'LBL_DATE_ACTIVATION',
    'type' => 'datetimecombo',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'size' => '20',
    'enable_range_search' => false,
);
$dictionary['bh_scripts']['fields']['deactivation'] = array (
    'required' => false,
    'name' => 'deactivation',
    'vname' => 'LBL_DATE_DEACTIVATION',
    'type' => 'datetimecombo',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'size' => '20',
    'enable_range_search' => false,
);
?>