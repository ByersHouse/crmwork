<?php 
 $GLOBALS["dictionary"]["bh_lead_adress"]=array (
  'table' => 'bh_lead_adress',
  'audited' => true,
  'inline_edit' => true,
  'duplicate_merge' => true,
  'fields' => 
  array (
    'id' => 
    array (
      'name' => 'id',
      'vname' => 'LBL_ID',
      'type' => 'id',
      'required' => true,
      'reportable' => true,
      'comment' => 'Unique identifier',
      'inline_edit' => false,
    ),
    'name' => 
    array (
      'name' => 'name',
      'vname' => 'LBL_NAME',
      'type' => 'name',
      'link' => true,
      'dbType' => 'varchar',
      'len' => 255,
      'unified_search' => true,
      'full_text_search' => 
      array (
        'boost' => 3,
      ),
      'required' => true,
      'importable' => 'required',
      'duplicate_merge' => 'enabled',
      'merge_filter' => 'selected',
    ),
    'date_entered' => 
    array (
      'name' => 'date_entered',
      'vname' => 'LBL_DATE_ENTERED',
      'type' => 'datetime',
      'group' => 'created_by_name',
      'comment' => 'Date record created',
      'enable_range_search' => true,
      'options' => 'date_range_search_dom',
      'inline_edit' => false,
    ),
    'date_modified' => 
    array (
      'name' => 'date_modified',
      'vname' => 'LBL_DATE_MODIFIED',
      'type' => 'datetime',
      'group' => 'modified_by_name',
      'comment' => 'Date record last modified',
      'enable_range_search' => true,
      'options' => 'date_range_search_dom',
      'inline_edit' => false,
    ),
    'modified_user_id' => 
    array (
      'name' => 'modified_user_id',
      'rname' => 'user_name',
      'id_name' => 'modified_user_id',
      'vname' => 'LBL_MODIFIED',
      'type' => 'assigned_user_name',
      'table' => 'users',
      'isnull' => 'false',
      'group' => 'modified_by_name',
      'dbType' => 'id',
      'reportable' => true,
      'comment' => 'User who last modified record',
      'massupdate' => false,
      'inline_edit' => false,
    ),
    'modified_by_name' => 
    array (
      'name' => 'modified_by_name',
      'vname' => 'LBL_MODIFIED_NAME',
      'type' => 'relate',
      'reportable' => false,
      'source' => 'non-db',
      'rname' => 'user_name',
      'table' => 'users',
      'id_name' => 'modified_user_id',
      'module' => 'Users',
      'link' => 'modified_user_link',
      'duplicate_merge' => 'disabled',
      'massupdate' => false,
      'inline_edit' => false,
    ),
    'created_by' => 
    array (
      'name' => 'created_by',
      'rname' => 'user_name',
      'id_name' => 'modified_user_id',
      'vname' => 'LBL_CREATED',
      'type' => 'assigned_user_name',
      'table' => 'users',
      'isnull' => 'false',
      'dbType' => 'id',
      'group' => 'created_by_name',
      'comment' => 'User who created record',
      'massupdate' => false,
      'inline_edit' => false,
    ),
    'created_by_name' => 
    array (
      'name' => 'created_by_name',
      'vname' => 'LBL_CREATED',
      'type' => 'relate',
      'reportable' => false,
      'link' => 'created_by_link',
      'rname' => 'user_name',
      'source' => 'non-db',
      'table' => 'users',
      'id_name' => 'created_by',
      'module' => 'Users',
      'duplicate_merge' => 'disabled',
      'importable' => 'false',
      'massupdate' => false,
      'inline_edit' => false,
    ),
    'description' => 
    array (
      'name' => 'description',
      'vname' => 'LBL_DESCRIPTION',
      'type' => 'text',
      'comment' => 'Full text of the note',
      'rows' => 6,
      'cols' => 80,
    ),
    'deleted' => 
    array (
      'name' => 'deleted',
      'vname' => 'LBL_DELETED',
      'type' => 'bool',
      'default' => '0',
      'reportable' => false,
      'comment' => 'Record deletion indicator',
    ),
    'created_by_link' => 
    array (
      'name' => 'created_by_link',
      'type' => 'link',
      'relationship' => 'bh_lead_adress_created_by',
      'vname' => 'LBL_CREATED_USER',
      'link_type' => 'one',
      'module' => 'Users',
      'bean_name' => 'User',
      'source' => 'non-db',
    ),
    'modified_user_link' => 
    array (
      'name' => 'modified_user_link',
      'type' => 'link',
      'relationship' => 'bh_lead_adress_modified_user',
      'vname' => 'LBL_MODIFIED_USER',
      'link_type' => 'one',
      'module' => 'Users',
      'bean_name' => 'User',
      'source' => 'non-db',
    ),
    'assigned_user_id' => 
    array (
      'name' => 'assigned_user_id',
      'rname' => 'user_name',
      'id_name' => 'assigned_user_id',
      'vname' => 'LBL_ASSIGNED_TO_ID',
      'group' => 'assigned_user_name',
      'type' => 'relate',
      'table' => 'users',
      'module' => 'Users',
      'reportable' => true,
      'isnull' => 'false',
      'dbType' => 'id',
      'audited' => true,
      'comment' => 'User ID assigned to record',
      'duplicate_merge' => 'disabled',
    ),
    'assigned_user_name' => 
    array (
      'name' => 'assigned_user_name',
      'link' => 'assigned_user_link',
      'vname' => 'LBL_ASSIGNED_TO_NAME',
      'rname' => 'user_name',
      'type' => 'relate',
      'reportable' => false,
      'source' => 'non-db',
      'table' => 'users',
      'id_name' => 'assigned_user_id',
      'module' => 'Users',
      'duplicate_merge' => 'disabled',
    ),
    'assigned_user_link' => 
    array (
      'name' => 'assigned_user_link',
      'type' => 'link',
      'relationship' => 'bh_lead_adress_assigned_user',
      'vname' => 'LBL_ASSIGNED_TO_USER',
      'link_type' => 'one',
      'module' => 'Users',
      'bean_name' => 'User',
      'source' => 'non-db',
      'duplicate_merge' => 'enabled',
      'rname' => 'user_name',
      'id_name' => 'assigned_user_id',
      'table' => 'users',
    ),
    'SecurityGroups' => 
    array (
      'name' => 'SecurityGroups',
      'type' => 'link',
      'relationship' => 'securitygroups_bh_lead_adress',
      'module' => 'SecurityGroups',
      'bean_name' => 'SecurityGroup',
      'source' => 'non-db',
      'vname' => 'LBL_SECURITYGROUPS',
    ),
    'bh_lead_adress_bh_country_1' => 
    array (
      'name' => 'bh_lead_adress_bh_country_1',
      'type' => 'link',
      'relationship' => 'bh_lead_adress_bh_country_1',
      'source' => 'non-db',
      'module' => 'bh_country',
      'bean_name' => 'bh_country',
      'vname' => 'LBL_BH_LEAD_ADRESS_BH_COUNTRY_1_FROM_BH_COUNTRY_TITLE',
      'id_name' => 'bh_lead_adress_bh_country_1bh_country_idb',
    ),
    'bh_lead_adress_bh_country_1_name' => 
    array (
      'name' => 'bh_lead_adress_bh_country_1_name',
      'type' => 'relate',
      'source' => 'non-db',
      'vname' => 'LBL_BH_LEAD_ADRESS_BH_COUNTRY_1_FROM_BH_COUNTRY_TITLE',
      'save' => true,
      'id_name' => 'bh_lead_adress_bh_country_1bh_country_idb',
      'link' => 'bh_lead_adress_bh_country_1',
      'table' => 'bh_country',
      'module' => 'bh_country',
      'rname' => 'name',
    ),
    'bh_lead_adress_bh_country_1bh_country_idb' => 
    array (
      'name' => 'bh_lead_adress_bh_country_1bh_country_idb',
      'type' => 'link',
      'relationship' => 'bh_lead_adress_bh_country_1',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'left',
      'vname' => 'LBL_BH_LEAD_ADRESS_BH_COUNTRY_1_FROM_BH_COUNTRY_TITLE',
    ),
    'bh_lead_adress_bh_locality_1' => 
    array (
      'name' => 'bh_lead_adress_bh_locality_1',
      'type' => 'link',
      'relationship' => 'bh_lead_adress_bh_locality_1',
      'source' => 'non-db',
      'module' => 'bh_locality',
      'bean_name' => 'bh_locality',
      'vname' => 'LBL_BH_LEAD_ADRESS_BH_LOCALITY_1_FROM_BH_LOCALITY_TITLE',
      'id_name' => 'bh_lead_adress_bh_locality_1bh_locality_idb',
    ),
    'bh_lead_adress_bh_locality_1_name' => 
    array (
      'name' => 'bh_lead_adress_bh_locality_1_name',
      'type' => 'relate',
      'source' => 'non-db',
      'vname' => 'LBL_BH_LEAD_ADRESS_BH_LOCALITY_1_FROM_BH_LOCALITY_TITLE',
      'save' => true,
      'id_name' => 'bh_lead_adress_bh_locality_1bh_locality_idb',
      'link' => 'bh_lead_adress_bh_locality_1',
      'table' => 'bh_locality',
      'module' => 'bh_locality',
      'rname' => 'name',
    ),
    'bh_lead_adress_bh_locality_1bh_locality_idb' => 
    array (
      'name' => 'bh_lead_adress_bh_locality_1bh_locality_idb',
      'type' => 'link',
      'relationship' => 'bh_lead_adress_bh_locality_1',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'left',
      'vname' => 'LBL_BH_LEAD_ADRESS_BH_LOCALITY_1_FROM_BH_LOCALITY_TITLE',
    ),
    'bh_lead_adress_bh_region_1' => 
    array (
      'name' => 'bh_lead_adress_bh_region_1',
      'type' => 'link',
      'relationship' => 'bh_lead_adress_bh_region_1',
      'source' => 'non-db',
      'module' => 'bh_region',
      'bean_name' => 'bh_region',
      'vname' => 'LBL_BH_LEAD_ADRESS_BH_REGION_1_FROM_BH_REGION_TITLE',
      'id_name' => 'bh_lead_adress_bh_region_1bh_region_idb',
    ),
    'bh_lead_adress_bh_region_1_name' => 
    array (
      'name' => 'bh_lead_adress_bh_region_1_name',
      'type' => 'relate',
      'source' => 'non-db',
      'vname' => 'LBL_BH_LEAD_ADRESS_BH_REGION_1_FROM_BH_REGION_TITLE',
      'save' => true,
      'id_name' => 'bh_lead_adress_bh_region_1bh_region_idb',
      'link' => 'bh_lead_adress_bh_region_1',
      'table' => 'bh_region',
      'module' => 'bh_region',
      'rname' => 'name',
    ),
    'bh_lead_adress_bh_region_1bh_region_idb' => 
    array (
      'name' => 'bh_lead_adress_bh_region_1bh_region_idb',
      'type' => 'link',
      'relationship' => 'bh_lead_adress_bh_region_1',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'left',
      'vname' => 'LBL_BH_LEAD_ADRESS_BH_REGION_1_FROM_BH_REGION_TITLE',
    ),
    'bh_lead_adress_bh_region_area_1' => 
    array (
      'name' => 'bh_lead_adress_bh_region_area_1',
      'type' => 'link',
      'relationship' => 'bh_lead_adress_bh_region_area_1',
      'source' => 'non-db',
      'module' => 'bh_region_area',
      'bean_name' => 'bh_region_area',
      'vname' => 'LBL_BH_LEAD_ADRESS_BH_REGION_AREA_1_FROM_BH_REGION_AREA_TITLE',
      'id_name' => 'bh_lead_adress_bh_region_area_1bh_region_area_idb',
    ),
    'bh_lead_adress_bh_region_area_1_name' => 
    array (
      'name' => 'bh_lead_adress_bh_region_area_1_name',
      'type' => 'relate',
      'source' => 'non-db',
      'vname' => 'LBL_BH_LEAD_ADRESS_BH_REGION_AREA_1_FROM_BH_REGION_AREA_TITLE',
      'save' => true,
      'id_name' => 'bh_lead_adress_bh_region_area_1bh_region_area_idb',
      'link' => 'bh_lead_adress_bh_region_area_1',
      'table' => 'bh_region_area',
      'module' => 'bh_region_area',
      'rname' => 'name',
    ),
    'bh_lead_adress_bh_region_area_1bh_region_area_idb' => 
    array (
      'name' => 'bh_lead_adress_bh_region_area_1bh_region_area_idb',
      'type' => 'link',
      'relationship' => 'bh_lead_adress_bh_region_area_1',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'left',
      'vname' => 'LBL_BH_LEAD_ADRESS_BH_REGION_AREA_1_FROM_BH_REGION_AREA_TITLE',
    ),
    'leads_bh_lead_adress_1' => 
    array (
      'name' => 'leads_bh_lead_adress_1',
      'type' => 'link',
      'relationship' => 'leads_bh_lead_adress_1',
      'source' => 'non-db',
      'module' => 'Leads',
      'bean_name' => 'Lead',
      'vname' => 'LBL_LEADS_BH_LEAD_ADRESS_1_FROM_LEADS_TITLE',
      'id_name' => 'leads_bh_lead_adress_1leads_ida',
    ),
    'leads_bh_lead_adress_1_name' => 
    array (
      'name' => 'leads_bh_lead_adress_1_name',
      'type' => 'relate',
      'source' => 'non-db',
      'vname' => 'LBL_LEADS_BH_LEAD_ADRESS_1_FROM_LEADS_TITLE',
      'save' => true,
      'id_name' => 'leads_bh_lead_adress_1leads_ida',
      'link' => 'leads_bh_lead_adress_1',
      'table' => 'leads',
      'module' => 'Leads',
      'rname' => 'name',
      'db_concat_fields' => 
      array (
        0 => 'first_name',
        1 => 'last_name',
      ),
    ),
    'leads_bh_lead_adress_1leads_ida' => 
    array (
      'name' => 'leads_bh_lead_adress_1leads_ida',
      'type' => 'link',
      'relationship' => 'leads_bh_lead_adress_1',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'right',
      'vname' => 'LBL_LEADS_BH_LEAD_ADRESS_1_FROM_BH_LEAD_ADRESS_TITLE',
    ),
    'post_code' => 
    array (
      'required' => false,
      'name' => 'post_code',
      'vname' => 'LBL_POST_CODE',
      'type' => 'varchar',
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
      'size' => '10',
      'enable_range_search' => false,
    ),
    'house' => 
    array (
      'required' => false,
      'name' => 'house',
      'vname' => 'LBL_HOUSE_NUM',
      'type' => 'varchar',
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
      'size' => '10',
      'enable_range_search' => false,
    ),
    'house_block' => 
    array (
      'required' => false,
      'name' => 'house_block',
      'vname' => 'LBL_HOUSE_BLOCK',
      'type' => 'varchar',
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
      'size' => '10',
      'enable_range_search' => false,
    ),
    'ap_num' => 
    array (
      'required' => false,
      'name' => 'ap_num',
      'vname' => 'LBL_AP_NUM',
      'type' => 'varchar',
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
      'size' => '10',
      'enable_range_search' => false,
    ),
    'register_date' => 
    array (
      'required' => false,
      'name' => 'register_date',
      'vname' => 'LBL_REGISTER_DATE',
      'type' => 'date',
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
      'size' => '10',
      'enable_range_search' => false,
    ),
    'date_of_stay' => 
    array (
      'required' => false,
      'name' => 'date_of_stay',
      'vname' => 'LBL_STAY_DATE',
      'type' => 'date',
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
    ),
    'adress_type' => 
    array (
      'required' => false,
      'name' => 'adress_type',
      'vname' => 'LBL_ADRESS_TYPE',
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
      'len' => 100,
      'size' => '20',
      'options' => 'adress_type_list',
      'studio' => 'visible',
      'dependency' => false,
    ),
  ),
  'relationships' => 
  array (
    'bh_lead_adress_modified_user' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'bh_lead_adress',
      'rhs_table' => 'bh_lead_adress',
      'rhs_key' => 'modified_user_id',
      'relationship_type' => 'one-to-many',
    ),
    'bh_lead_adress_created_by' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'bh_lead_adress',
      'rhs_table' => 'bh_lead_adress',
      'rhs_key' => 'created_by',
      'relationship_type' => 'one-to-many',
    ),
    'bh_lead_adress_assigned_user' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'bh_lead_adress',
      'rhs_table' => 'bh_lead_adress',
      'rhs_key' => 'assigned_user_id',
      'relationship_type' => 'one-to-many',
    ),
    'securitygroups_bh_lead_adress' => 
    array (
      'lhs_module' => 'SecurityGroups',
      'lhs_table' => 'securitygroups',
      'lhs_key' => 'id',
      'rhs_module' => 'bh_lead_adress',
      'rhs_table' => 'bh_lead_adress',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'securitygroups_records',
      'join_key_lhs' => 'securitygroup_id',
      'join_key_rhs' => 'record_id',
      'relationship_role_column' => 'module',
      'relationship_role_column_value' => 'bh_lead_adress',
    ),
  ),
  'optimistic_locking' => true,
  'unified_search' => true,
  'indices' => 
  array (
    'id' => 
    array (
      'name' => 'bh_lead_adresspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
  ),
  'templates' => 
  array (
    'security_groups' => 'security_groups',
    'assignable' => 'assignable',
    'basic' => 'basic',
  ),
  'custom_fields' => false,
);