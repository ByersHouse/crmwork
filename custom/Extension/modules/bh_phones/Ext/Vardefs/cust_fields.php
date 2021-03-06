<?php


$dictionary['bh_phones']['fields']['phone_contact'] = array (
    'required' => false,
    'name' => 'phone_contact',
    'vname' => 'LBL_PHONE_CONTACT',
    'type' => 'phone',
    'link' => true,
    'default' => true,
    'massupdate' => 0,
    'no_default' => false,
    'comments' => 'Номер телефона',
    'help' => 'Номер телефона',
    'importable' => 'true',
    'duplicate_merge' => 'enabled',
    'duplicate_merge_dom_value' => '1',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'len' => '100',
    'size' => '20',
    'dbType' => 'varchar',
);

$dictionary['bh_phones']['fields']['operator'] = array (
    'required' => false,
    'name' => 'operator',
    'vname' => 'LBL_OPERATOR',
    'type' => 'varchar',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => 'Оператор',
    'help' => 'Сотоый оператор',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => false,
    'reportable' => true,
    'unified_search' => true,
    'merge_filter' => 'disabled',
    'len' => '40',
    'size' => '20',
);