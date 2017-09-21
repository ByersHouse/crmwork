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
  'bh_scripts_bh_scripts_employee_comment_1' => 
  array (
    'id' => '9c2a0e07-9d7b-63e8-1336-59c215bd7a7d',
    'relationship_name' => 'bh_scripts_bh_scripts_employee_comment_1',
    'lhs_module' => 'bh_scripts',
    'lhs_table' => 'bh_scripts',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_Scripts_employee_comment',
    'rhs_table' => 'bh_scripts_employee_comment',
    'rhs_key' => 'id',
    'join_table' => 'bh_scripts_bh_scripts_employee_comment_1_c',
    'join_key_lhs' => 'bh_scripts_bh_scripts_employee_comment_1bh_scripts_ida',
    'join_key_rhs' => 'bh_scripts22dfcomment_idb',
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
  'bh_scripts_bh_scripts_leadership_recommend_1' => 
  array (
    'id' => '9ca41126-43e9-8942-13c9-59c215525086',
    'relationship_name' => 'bh_scripts_bh_scripts_leadership_recommend_1',
    'lhs_module' => 'bh_scripts',
    'lhs_table' => 'bh_scripts',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_Scripts_leadership_recommend',
    'rhs_table' => 'bh_scripts_leadership_recommend',
    'rhs_key' => 'id',
    'join_table' => 'bh_scripts_bh_scripts_leadership_recommend_1_c',
    'join_key_lhs' => 'bh_scripts_bh_scripts_leadership_recommend_1bh_scripts_ida',
    'join_key_rhs' => 'bh_scriptsb2a1commend_idb',
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
  'bh_scripts_bh_script_param_response_1' => 
  array (
    'id' => '9d1e2976-e315-b55d-dc0b-59c215afdc31',
    'relationship_name' => 'bh_scripts_bh_script_param_response_1',
    'lhs_module' => 'bh_scripts',
    'lhs_table' => 'bh_scripts',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_script_param_response',
    'rhs_table' => 'bh_script_param_response',
    'rhs_key' => 'id',
    'join_table' => 'bh_scripts_bh_script_param_response_1_c',
    'join_key_lhs' => 'bh_scripts_bh_script_param_response_1bh_scripts_ida',
    'join_key_rhs' => 'bh_scripts6c20esponse_idb',
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
  'bh_scripts_modified_user' => 
  array (
    'id' => 'ca2ddd12-9618-4577-d359-59c215b9fab7',
    'relationship_name' => 'bh_scripts_modified_user',
    'lhs_module' => 'Users',
    'lhs_table' => 'users',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_scripts',
    'rhs_table' => 'bh_scripts',
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
  'bh_scripts_created_by' => 
  array (
    'id' => 'ca6ad32c-5181-b747-064c-59c2153d122b',
    'relationship_name' => 'bh_scripts_created_by',
    'lhs_module' => 'Users',
    'lhs_table' => 'users',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_scripts',
    'rhs_table' => 'bh_scripts',
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
  'bh_scripts_assigned_user' => 
  array (
    'id' => 'caa7ec1b-4844-497d-fd5d-59c215ff37de',
    'relationship_name' => 'bh_scripts_assigned_user',
    'lhs_module' => 'Users',
    'lhs_table' => 'users',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_scripts',
    'rhs_table' => 'bh_scripts',
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
  'securitygroups_bh_scripts' => 
  array (
    'id' => 'cae4ef05-05ff-288c-4828-59c215c16208',
    'relationship_name' => 'securitygroups_bh_scripts',
    'lhs_module' => 'SecurityGroups',
    'lhs_table' => 'securitygroups',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_scripts',
    'rhs_table' => 'bh_scripts',
    'rhs_key' => 'id',
    'join_table' => 'securitygroups_records',
    'join_key_lhs' => 'securitygroup_id',
    'join_key_rhs' => 'record_id',
    'relationship_type' => 'many-to-many',
    'relationship_role_column' => 'module',
    'relationship_role_column_value' => 'bh_scripts',
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