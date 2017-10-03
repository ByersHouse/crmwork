<?php
// created: 2017-10-03 14:18:54
$dictionary["bh_campaine_products"]["fields"]["aos_products_bh_campaine_products_1"] = array (
  'name' => 'aos_products_bh_campaine_products_1',
  'type' => 'link',
  'relationship' => 'aos_products_bh_campaine_products_1',
  'source' => 'non-db',
  'module' => 'AOS_Products',
  'bean_name' => 'AOS_Products',
  'vname' => 'LBL_AOS_PRODUCTS_BH_CAMPAINE_PRODUCTS_1_FROM_AOS_PRODUCTS_TITLE',
  'id_name' => 'aos_products_bh_campaine_products_1aos_products_ida',
);
$dictionary["bh_campaine_products"]["fields"]["aos_products_bh_campaine_products_1_name"] = array (
  'name' => 'aos_products_bh_campaine_products_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_AOS_PRODUCTS_BH_CAMPAINE_PRODUCTS_1_FROM_AOS_PRODUCTS_TITLE',
  'save' => true,
  'id_name' => 'aos_products_bh_campaine_products_1aos_products_ida',
  'link' => 'aos_products_bh_campaine_products_1',
  'table' => 'aos_products',
  'module' => 'AOS_Products',
  'rname' => 'name',
);
$dictionary["bh_campaine_products"]["fields"]["aos_products_bh_campaine_products_1aos_products_ida"] = array (
  'name' => 'aos_products_bh_campaine_products_1aos_products_ida',
  'type' => 'link',
  'relationship' => 'aos_products_bh_campaine_products_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_AOS_PRODUCTS_BH_CAMPAINE_PRODUCTS_1_FROM_BH_CAMPAINE_PRODUCTS_TITLE',
);
