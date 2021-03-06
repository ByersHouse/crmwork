<?php
// created: 2017-09-20 11:38:59
$dictionary["bh_case_compound"]["fields"]["cases_bh_case_compound_1"] = array (
  'name' => 'cases_bh_case_compound_1',
  'type' => 'link',
  'relationship' => 'cases_bh_case_compound_1',
  'source' => 'non-db',
  'module' => 'Cases',
  'bean_name' => 'Case',
  'vname' => 'LBL_CASES_BH_CASE_COMPOUND_1_FROM_CASES_TITLE',
  'id_name' => 'cases_bh_case_compound_1cases_ida',
);
$dictionary["bh_case_compound"]["fields"]["cases_bh_case_compound_1_name"] = array (
  'name' => 'cases_bh_case_compound_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_CASES_BH_CASE_COMPOUND_1_FROM_CASES_TITLE',
  'save' => true,
  'id_name' => 'cases_bh_case_compound_1cases_ida',
  'link' => 'cases_bh_case_compound_1',
  'table' => 'cases',
  'module' => 'Cases',
  'rname' => 'name',
);
$dictionary["bh_case_compound"]["fields"]["cases_bh_case_compound_1cases_ida"] = array (
  'name' => 'cases_bh_case_compound_1cases_ida',
  'type' => 'link',
  'relationship' => 'cases_bh_case_compound_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_CASES_BH_CASE_COMPOUND_1_FROM_BH_CASE_COMPOUND_TITLE',
);
