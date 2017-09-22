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
  'bh_category_at_work_bh_place_of_work_1' => 
  array (
    'id' => '1406f428-e0b8-28db-0092-59c3cf67bac4',
    'relationship_name' => 'bh_category_at_work_bh_place_of_work_1',
    'lhs_module' => 'bh_category_at_work',
    'lhs_table' => 'bh_category_at_work',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_place_of_work',
    'rhs_table' => 'bh_place_of_work',
    'rhs_key' => 'id',
    'join_table' => 'bh_category_at_work_bh_place_of_work_1_c',
    'join_key_lhs' => 'bh_category_at_work_bh_place_of_work_1bh_category_at_work_ida',
    'join_key_rhs' => 'bh_category_at_work_bh_place_of_work_1bh_place_of_work_idb',
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
  'bh_org_bh_place_of_work_1' => 
  array (
    'id' => '179a7b00-1e89-a2d8-a3db-59c3cf2a65be',
    'relationship_name' => 'bh_org_bh_place_of_work_1',
    'lhs_module' => 'bh_org',
    'lhs_table' => 'bh_org',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_place_of_work',
    'rhs_table' => 'bh_place_of_work',
    'rhs_key' => 'id',
    'join_table' => 'bh_org_bh_place_of_work_1_c',
    'join_key_lhs' => 'bh_org_bh_place_of_work_1bh_org_ida',
    'join_key_rhs' => 'bh_org_bh_place_of_work_1bh_place_of_work_idb',
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
  'leads_bh_place_of_work_1' => 
  array (
    'id' => '1c9c3bac-8adf-432b-5e48-59c3cf19524c',
    'relationship_name' => 'leads_bh_place_of_work_1',
    'lhs_module' => 'Leads',
    'lhs_table' => 'leads',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_place_of_work',
    'rhs_table' => 'bh_place_of_work',
    'rhs_key' => 'id',
    'join_table' => 'leads_bh_place_of_work_1_c',
    'join_key_lhs' => 'leads_bh_place_of_work_1leads_ida',
    'join_key_rhs' => 'leads_bh_place_of_work_1bh_place_of_work_idb',
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
  'bh_place_of_work_modified_user' => 
  array (
    'id' => '47868448-04b0-8e2b-6f71-59c3cf6e5e5d',
    'relationship_name' => 'bh_place_of_work_modified_user',
    'lhs_module' => 'Users',
    'lhs_table' => 'users',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_place_of_work',
    'rhs_table' => 'bh_place_of_work',
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
    'from_studio' => false,
  ),
  'bh_place_of_work_created_by' => 
  array (
    'id' => '47c39dec-f786-010b-c777-59c3cf414a73',
    'relationship_name' => 'bh_place_of_work_created_by',
    'lhs_module' => 'Users',
    'lhs_table' => 'users',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_place_of_work',
    'rhs_table' => 'bh_place_of_work',
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
    'from_studio' => false,
  ),
  'bh_place_of_work_assigned_user' => 
  array (
    'id' => '483dae32-1863-d5fd-c3a2-59c3cf8fbb65',
    'relationship_name' => 'bh_place_of_work_assigned_user',
    'lhs_module' => 'Users',
    'lhs_table' => 'users',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_place_of_work',
    'rhs_table' => 'bh_place_of_work',
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
    'from_studio' => false,
  ),
  'securitygroups_bh_place_of_work' => 
  array (
    'id' => '487ab9e4-33a1-520f-e4db-59c3cfe8c60b',
    'relationship_name' => 'securitygroups_bh_place_of_work',
    'lhs_module' => 'SecurityGroups',
    'lhs_table' => 'securitygroups',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_place_of_work',
    'rhs_table' => 'bh_place_of_work',
    'rhs_key' => 'id',
    'join_table' => 'securitygroups_records',
    'join_key_lhs' => 'securitygroup_id',
    'join_key_rhs' => 'record_id',
    'relationship_type' => 'many-to-many',
    'relationship_role_column' => 'module',
    'relationship_role_column_value' => 'bh_place_of_work',
    'reverse' => '0',
    'deleted' => '0',
    'readonly' => true,
    'rhs_subpanel' => NULL,
    'lhs_subpanel' => NULL,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => false,
  ),
);