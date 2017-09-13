<?php

$dictionary["bh_org_trade_points"]["fields"]["geo_coord"] = array (
      'required' => false,
      'name' => 'geo_coord',
      'vname' => 'LBL_GEO_COORD',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Геокоординаты',
      'help' => 'Геокоординаты',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'enabled',
      'len' => '0',
      'size' => '40',
      'rows'=>'6',
      'cols'=>'80',
);


$dictionary["bh_org_trade_points"]["fields"]["work_schedule"] = array (
      'required' => false,
      'name' => 'work_schedule',
      'vname' => 'LBL_WORK_SCHEDULE',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'График работы',
      'help' => 'График работы',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'enabled',
      'len' => '25',
      'size' => '40',
);

$dictionary['bh_org_trade_points']['fields']['address'] = array (
      'required' => false,
      'name' => 'address',
      'vname' => 'LBL_ADDRESS',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Адрес',
      'help' => 'Адрес',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'enabled',
      'len' => '100',
      'size' => '20',
);