<?php
// created: 2017-09-20 11:47:22
$dictionary["bh_case_compound"]["fields"]["aos_products_bh_case_compound_1"] = array (
  'name' => 'aos_products_bh_case_compound_1',
  'type' => 'link',
  'relationship' => 'aos_products_bh_case_compound_1',
  'source' => 'non-db',
  'module' => 'AOS_Products',
  'bean_name' => 'AOS_Products',
  'vname' => 'LBL_AOS_PRODUCTS_BH_CASE_COMPOUND_1_FROM_AOS_PRODUCTS_TITLE',
  'id_name' => 'aos_products_bh_case_compound_1aos_products_ida',
);
$dictionary["bh_case_compound"]["fields"]["aos_products_bh_case_compound_1_name"] = array (
  'name' => 'aos_products_bh_case_compound_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_AOS_PRODUCTS_BH_CASE_COMPOUND_1_FROM_AOS_PRODUCTS_TITLE',
  'save' => true,
  'id_name' => 'aos_products_bh_case_compound_1aos_products_ida',
  'link' => 'aos_products_bh_case_compound_1',
  'table' => 'aos_products',
  'module' => 'AOS_Products',
  'rname' => 'name',
);
$dictionary["bh_case_compound"]["fields"]["aos_products_bh_case_compound_1aos_products_ida"] = array (
  'name' => 'aos_products_bh_case_compound_1aos_products_ida',
  'type' => 'link',
  'relationship' => 'aos_products_bh_case_compound_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_AOS_PRODUCTS_BH_CASE_COMPOUND_1_FROM_BH_CASE_COMPOUND_TITLE',
);
