<?php
// created: 2017-09-22 12:47:30
$dictionary["bh_country"]["fields"]["bh_passports_bh_country_1"] = array (
  'name' => 'bh_passports_bh_country_1',
  'type' => 'link',
  'relationship' => 'bh_passports_bh_country_1',
  'source' => 'non-db',
  'module' => 'bh_passports',
  'bean_name' => 'bh_passports',
  'vname' => 'LBL_BH_PASSPORTS_BH_COUNTRY_1_FROM_BH_PASSPORTS_TITLE',
  'id_name' => 'bh_passports_bh_country_1bh_passports_ida',
);
$dictionary["bh_country"]["fields"]["bh_passports_bh_country_1_name"] = array (
  'name' => 'bh_passports_bh_country_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_PASSPORTS_BH_COUNTRY_1_FROM_BH_PASSPORTS_TITLE',
  'save' => true,
  'id_name' => 'bh_passports_bh_country_1bh_passports_ida',
  'link' => 'bh_passports_bh_country_1',
  'table' => 'bh_passports',
  'module' => 'bh_passports',
  'rname' => 'name',
);
$dictionary["bh_country"]["fields"]["bh_passports_bh_country_1bh_passports_ida"] = array (
  'name' => 'bh_passports_bh_country_1bh_passports_ida',
  'type' => 'link',
  'relationship' => 'bh_passports_bh_country_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_BH_PASSPORTS_BH_COUNTRY_1_FROM_BH_PASSPORTS_TITLE',
);
