<?php
/**
 *
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 *
 * SuiteCRM is an extension to SugarCRM Community Edition developed by SalesAgility Ltd.
 * Copyright (C) 2011 - 2017 SalesAgility Ltd.
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 *
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 *
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo and "Supercharged by SuiteCRM" logo. If the display of the logos is not
 * reasonably feasible for  technical reasons, the Appropriate Legal Notices must
 * display the words  "Powered by SugarCRM" and "Supercharged by SuiteCRM".
 */


$relationships = array (
  'bh_lead_adress_bh_region_area_1' => 
  array (
    'id' => '3a699c03-ac26-8ed3-d9cf-59c4c6835b35',
    'relationship_name' => 'bh_lead_adress_bh_region_area_1',
    'lhs_module' => 'bh_lead_adress',
    'lhs_table' => 'bh_lead_adress',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_region_area',
    'rhs_table' => 'bh_region_area',
    'rhs_key' => 'id',
    'join_table' => 'bh_lead_adress_bh_region_area_1_c',
    'join_key_lhs' => 'bh_lead_adress_bh_region_area_1bh_lead_adress_ida',
    'join_key_rhs' => 'bh_lead_adress_bh_region_area_1bh_region_area_idb',
    'relationship_type' => 'one-to-one',
    'relationship_role_column' => NULL,
    'relationship_role_column_value' => NULL,
    'reverse' => '0',
    'deleted' => '0',
    'readonly' => true,
    'rhs_subpanel' => NULL,
    'lhs_subpanel' => NULL,
    'from_studio' => true,
    'is_custom' => true,
    'relationship_only' => false,
    'for_activities' => false,
  ),
  'bh_region_bh_region_area_1' => 
  array (
    'id' => '3d45fb12-fdec-f3de-bcba-59c4c62e7143',
    'relationship_name' => 'bh_region_bh_region_area_1',
    'lhs_module' => 'bh_region',
    'lhs_table' => 'bh_region',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_region_area',
    'rhs_table' => 'bh_region_area',
    'rhs_key' => 'id',
    'join_table' => 'bh_region_bh_region_area_1_c',
    'join_key_lhs' => 'bh_region_bh_region_area_1bh_region_ida',
    'join_key_rhs' => 'bh_region_bh_region_area_1bh_region_area_idb',
    'relationship_type' => 'one-to-many',
    'relationship_role_column' => NULL,
    'relationship_role_column_value' => NULL,
    'reverse' => '0',
    'deleted' => '0',
    'readonly' => true,
    'rhs_subpanel' => 'default',
    'lhs_subpanel' => NULL,
    'from_studio' => true,
    'is_custom' => true,
    'relationship_only' => false,
    'for_activities' => false,
  ),
  'bh_region_area_modified_user' => 
  array (
    'id' => 'bdc7fb23-273b-026b-a06a-59c4c672bf8f',
    'relationship_name' => 'bh_region_area_modified_user',
    'lhs_module' => 'Users',
    'lhs_table' => 'users',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_region_area',
    'rhs_table' => 'bh_region_area',
    'rhs_key' => 'modified_user_id',
    'join_table' => NULL,
    'join_key_lhs' => NULL,
    'join_key_rhs' => NULL,
    'relationship_type' => 'one-to-many',
    'relationship_role_column' => NULL,
    'relationship_role_column_value' => NULL,
    'reverse' => '0',
    'deleted' => '0',
    'readonly' => true,
    'rhs_subpanel' => NULL,
    'lhs_subpanel' => NULL,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => true,
  ),
  'bh_region_area_created_by' => 
  array (
    'id' => 'be050e24-a080-1bac-8ad8-59c4c61bd5e1',
    'relationship_name' => 'bh_region_area_created_by',
    'lhs_module' => 'Users',
    'lhs_table' => 'users',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_region_area',
    'rhs_table' => 'bh_region_area',
    'rhs_key' => 'created_by',
    'join_table' => NULL,
    'join_key_lhs' => NULL,
    'join_key_rhs' => NULL,
    'relationship_type' => 'one-to-many',
    'relationship_role_column' => NULL,
    'relationship_role_column_value' => NULL,
    'reverse' => '0',
    'deleted' => '0',
    'readonly' => true,
    'rhs_subpanel' => NULL,
    'lhs_subpanel' => NULL,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => true,
  ),
  'bh_region_area_assigned_user' => 
  array (
    'id' => 'be420cfb-29af-5f0c-00bf-59c4c62c0b4c',
    'relationship_name' => 'bh_region_area_assigned_user',
    'lhs_module' => 'Users',
    'lhs_table' => 'users',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_region_area',
    'rhs_table' => 'bh_region_area',
    'rhs_key' => 'assigned_user_id',
    'join_table' => NULL,
    'join_key_lhs' => NULL,
    'join_key_rhs' => NULL,
    'relationship_type' => 'one-to-many',
    'relationship_role_column' => NULL,
    'relationship_role_column_value' => NULL,
    'reverse' => '0',
    'deleted' => '0',
    'readonly' => true,
    'rhs_subpanel' => NULL,
    'lhs_subpanel' => NULL,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => true,
  ),
  'securitygroups_bh_region_area' => 
  array (
    'id' => 'be7f1ef5-b49a-5c52-6c37-59c4c604cb48',
    'relationship_name' => 'securitygroups_bh_region_area',
    'lhs_module' => 'SecurityGroups',
    'lhs_table' => 'securitygroups',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_region_area',
    'rhs_table' => 'bh_region_area',
    'rhs_key' => 'id',
    'join_table' => 'securitygroups_records',
    'join_key_lhs' => 'securitygroup_id',
    'join_key_rhs' => 'record_id',
    'relationship_type' => 'many-to-many',
    'relationship_role_column' => 'module',
    'relationship_role_column_value' => 'bh_region_area',
    'reverse' => '0',
    'deleted' => '0',
    'readonly' => true,
    'rhs_subpanel' => NULL,
    'lhs_subpanel' => NULL,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => true,
  ),
  'bh_region_area_bh_locality_1' => 
  array (
    'rhs_label' => 'Населенный пункт',
    'lhs_label' => 'Район региона',
    'rhs_subpanel' => 'default',
    'lhs_module' => 'bh_region_area',
    'rhs_module' => 'bh_locality',
    'relationship_type' => 'one-to-many',
    'readonly' => true,
    'deleted' => false,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => true,
    'relationship_name' => 'bh_region_area_bh_locality_1',
  ),
);