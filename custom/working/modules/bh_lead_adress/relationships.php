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
  'bh_lead_adress_bh_country_1' => 
  array (
    'id' => '6961855d-d476-5943-e552-59c4c82db3b8',
    'relationship_name' => 'bh_lead_adress_bh_country_1',
    'lhs_module' => 'bh_lead_adress',
    'lhs_table' => 'bh_lead_adress',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_country',
    'rhs_table' => 'bh_country',
    'rhs_key' => 'id',
    'join_table' => 'bh_lead_adress_bh_country_1_c',
    'join_key_lhs' => 'bh_lead_adress_bh_country_1bh_lead_adress_ida',
    'join_key_rhs' => 'bh_lead_adress_bh_country_1bh_country_idb',
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
  'bh_lead_adress_bh_region_1' => 
  array (
    'id' => '699e93d5-13fc-1e63-0c84-59c4c854bedc',
    'relationship_name' => 'bh_lead_adress_bh_region_1',
    'lhs_module' => 'bh_lead_adress',
    'lhs_table' => 'bh_lead_adress',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_region',
    'rhs_table' => 'bh_region',
    'rhs_key' => 'id',
    'join_table' => 'bh_lead_adress_bh_region_1_c',
    'join_key_lhs' => 'bh_lead_adress_bh_region_1bh_lead_adress_ida',
    'join_key_rhs' => 'bh_lead_adress_bh_region_1bh_region_idb',
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
  'bh_lead_adress_bh_region_area_1' => 
  array (
    'id' => '6a18a3f2-d659-3c11-1d48-59c4c89cf84e',
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
  'leads_bh_lead_adress_1' => 
  array (
    'id' => '70889584-25bb-4eef-1faa-59c4c8779101',
    'relationship_name' => 'leads_bh_lead_adress_1',
    'lhs_module' => 'Leads',
    'lhs_table' => 'leads',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_lead_adress',
    'rhs_table' => 'bh_lead_adress',
    'rhs_key' => 'id',
    'join_table' => 'leads_bh_lead_adress_1_c',
    'join_key_lhs' => 'leads_bh_lead_adress_1leads_ida',
    'join_key_rhs' => 'leads_bh_lead_adress_1bh_lead_adress_idb',
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
  'bh_lead_adress_modified_user' => 
  array (
    'id' => '78e0dd8b-4e91-e56b-4d40-59c4c8c712c0',
    'relationship_name' => 'bh_lead_adress_modified_user',
    'lhs_module' => 'Users',
    'lhs_table' => 'users',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_lead_adress',
    'rhs_table' => 'bh_lead_adress',
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
  'bh_lead_adress_created_by' => 
  array (
    'id' => '791dd40a-9294-8ce9-0175-59c4c8958475',
    'relationship_name' => 'bh_lead_adress_created_by',
    'lhs_module' => 'Users',
    'lhs_table' => 'users',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_lead_adress',
    'rhs_table' => 'bh_lead_adress',
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
  'bh_lead_adress_assigned_user' => 
  array (
    'id' => '795ae61d-6747-3695-014c-59c4c8174943',
    'relationship_name' => 'bh_lead_adress_assigned_user',
    'lhs_module' => 'Users',
    'lhs_table' => 'users',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_lead_adress',
    'rhs_table' => 'bh_lead_adress',
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
  'securitygroups_bh_lead_adress' => 
  array (
    'id' => '7997eb3c-bba1-696d-f6b4-59c4c8724cc7',
    'relationship_name' => 'securitygroups_bh_lead_adress',
    'lhs_module' => 'SecurityGroups',
    'lhs_table' => 'securitygroups',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_lead_adress',
    'rhs_table' => 'bh_lead_adress',
    'rhs_key' => 'id',
    'join_table' => 'securitygroups_records',
    'join_key_lhs' => 'securitygroup_id',
    'join_key_rhs' => 'record_id',
    'relationship_type' => 'many-to-many',
    'relationship_role_column' => 'module',
    'relationship_role_column_value' => 'bh_lead_adress',
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
  'bh_lead_adress_bh_locality_1' => 
  array (
    'lhs_module' => 'bh_lead_adress',
    'rhs_module' => 'bh_locality',
    'relationship_type' => 'one-to-one',
    'readonly' => true,
    'deleted' => false,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => true,
    'relationship_name' => 'bh_lead_adress_bh_locality_1',
  ),
);