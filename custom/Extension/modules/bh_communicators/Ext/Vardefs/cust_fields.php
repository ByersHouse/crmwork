<?php

$module = 'bh_communicators';

$dictionary[$module]['fields']['communicator'] = array(
    'name'        => 'communicator',
    'vname'        => 'LBL_COMMUNICATOR',
    'group'=>'email1',
    'type'        => 'varchar',
    'function'    => array(
        'name'        => 'getEmailAddressWidget',
        'returns'    => 'html'
    ),
    'source'    => 'non-db',
    'studio' => array('editField' => true),
);

$dictionary[$module]['fields']['communicator_primary'] = array(
    'name' => 'communicator_primary',
    'type' => 'link',
    'relationship' => strtolower($module).'_communicator_primary',
    'source' => 'non-db',
    'vname' => 'LBL_COMMUNICATOR',
    'duplicate_merge' => 'disabled',
);

$dictionary[$module]['fields']['communicators'] = array (
    'name' => 'communicators',
    'type' => 'link',
    'relationship' => strtolower($module).'_communicators',
    'source' => 'non-db',
    'vname' => 'LBL_COMMUNICATORS',
    'reportable'=>false,
    'unified_search' => true,
    'rel_fields' => array('primary_address' => array('type'=>'bool')),
);

$dictionary[$module]['relationships'][strtolower($module).'_communicators'] = array(
    'lhs_module'=> $module,
    'lhs_table'=> strtolower($module),
    'lhs_key' => 'id',
    'rhs_module'=> 'EmailAddresses',
    'rhs_table'=> 'communicators',
    'rhs_key' => 'id',
    'relationship_type'=>'many-to-many',
    'join_table'=> 'email_addr_bean_rel',
    'join_key_lhs'=>'bean_id',
    'join_key_rhs'=>'communicators_id',
    'relationship_role_column'=>'bean_module',
    'relationship_role_column_value'=>$module
);

$dictionary[$module]['relationships'][strtolower($module).'_communicators_primary'] = array(
    'lhs_module'=> $module,
    'lhs_table' => strtolower($module),
    'lhs_key' => 'id',
    'rhs_module' => 'communicators',
    'rhs_table' => 'communicators',
    'rhs_key' => 'id',
    'relationship_type'=>'many-to-many',
    'join_table'=> 'email_addr_bean_rel',
    'join_key_lhs'=>'bean_id',
    'join_key_rhs'=>'email_address_id',
    'relationship_role_column'=>'primary_address',
    'relationship_role_column_value'=>'1'
);

