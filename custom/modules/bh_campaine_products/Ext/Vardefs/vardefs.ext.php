<?php 
 //WARNING: The contents of this file are auto-generated


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


// created: 2017-10-03 14:11:56
$dictionary["bh_campaine_products"]["fields"]["bh_marketing_company_bh_campaine_products_1"] = array (
  'name' => 'bh_marketing_company_bh_campaine_products_1',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_campaine_products_1',
  'source' => 'non-db',
  'module' => 'bh_marketing_company',
  'bean_name' => 'bh_marketing_company',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_CAMPAINE_PRODUCTS_1_FROM_BH_MARKETING_COMPANY_TITLE',
  'id_name' => 'bh_marketi9abccompany_ida',
);
$dictionary["bh_campaine_products"]["fields"]["bh_marketing_company_bh_campaine_products_1_name"] = array (
  'name' => 'bh_marketing_company_bh_campaine_products_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_CAMPAINE_PRODUCTS_1_FROM_BH_MARKETING_COMPANY_TITLE',
  'save' => true,
  'id_name' => 'bh_marketi9abccompany_ida',
  'link' => 'bh_marketing_company_bh_campaine_products_1',
  'table' => 'bh_marketing_company',
  'module' => 'bh_marketing_company',
  'rname' => 'name',
);
$dictionary["bh_campaine_products"]["fields"]["bh_marketi9abccompany_ida"] = array (
  'name' => 'bh_marketi9abccompany_ida',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_campaine_products_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_CAMPAINE_PRODUCTS_1_FROM_BH_CAMPAINE_PRODUCTS_TITLE',
);

?>