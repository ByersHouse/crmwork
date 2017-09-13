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
  'bh_scripts_employee_comment_bh_scripts' => 
  array (
    'id' => '269fbdd8-d3ab-ba13-d8d3-59b8f072bde9',
    'relationship_name' => 'bh_scripts_employee_comment_bh_scripts',
    'lhs_module' => 'bh_Scripts_employee_comment',
    'lhs_table' => 'bh_scripts_employee_comment',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_scripts',
    'rhs_table' => 'bh_scripts',
    'rhs_key' => 'id',
    'join_table' => 'bh_scripts_employee_comment_bh_scripts_c',
    'join_key_lhs' => 'bh_scripts7127comment_ida',
    'join_key_rhs' => 'bh_scripts_employee_comment_bh_scriptsbh_scripts_idb',
    'relationship_type' => 'many-to-many',
    'relationship_role_column' => NULL,
    'relationship_role_column_value' => NULL,
    'reverse' => '0',
    'deleted' => '0',
    'readonly' => true,
    'rhs_subpanel' => 'default',
    'lhs_subpanel' => 'default',
    'is_custom' => true,
    'relationship_only' => false,
    'for_activities' => false,
    'from_studio' => false,
  ),
  'bh_script_param_response_bh_scripts' => 
  array (
    'id' => '2719cdb7-5b56-3cf6-5bb6-59b8f0a48b94',
    'relationship_name' => 'bh_script_param_response_bh_scripts',
    'lhs_module' => 'bh_script_param_response',
    'lhs_table' => 'bh_script_param_response',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_scripts',
    'rhs_table' => 'bh_scripts',
    'rhs_key' => 'id',
    'join_table' => 'bh_script_param_response_bh_scripts_c',
    'join_key_lhs' => 'bh_script_param_response_bh_scriptsbh_script_param_response_ida',
    'join_key_rhs' => 'bh_script_param_response_bh_scriptsbh_scripts_idb',
    'relationship_type' => 'many-to-many',
    'relationship_role_column' => NULL,
    'relationship_role_column_value' => NULL,
    'reverse' => '0',
    'deleted' => '0',
    'readonly' => true,
    'rhs_subpanel' => 'default',
    'lhs_subpanel' => 'default',
    'is_custom' => true,
    'relationship_only' => false,
    'for_activities' => false,
    'from_studio' => false,
  ),
  'bh_scr_status_history_bh_scripts' => 
  array (
    'id' => '2756c688-7d18-7db0-4537-59b8f06a2285',
    'relationship_name' => 'bh_scr_status_history_bh_scripts',
    'lhs_module' => 'bh_scr_status_history',
    'lhs_table' => 'bh_scr_status_history',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_scripts',
    'rhs_table' => 'bh_scripts',
    'rhs_key' => 'id',
    'join_table' => 'bh_scr_status_history_bh_scripts_c',
    'join_key_lhs' => 'bh_scr_status_history_bh_scriptsbh_scr_status_history_ida',
    'join_key_rhs' => 'bh_scr_status_history_bh_scriptsbh_scripts_idb',
    'relationship_type' => 'one-to-many',
    'relationship_role_column' => NULL,
    'relationship_role_column_value' => NULL,
    'reverse' => '0',
    'deleted' => '0',
    'readonly' => true,
    'rhs_subpanel' => 'default',
    'lhs_subpanel' => 'default',
    'is_custom' => true,
    'relationship_only' => false,
    'for_activities' => false,
    'from_studio' => false,
  ),
  'bh_scripts_modified_user' => 
  array (
    'id' => 'c02a5642-c445-9b96-dfbc-59b8f05b198d',
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
    'id' => 'c06752b0-a4bd-b377-8f23-59b8f0c0b88a',
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
    'id' => 'c0a46b7a-01fd-a06c-ed46-59b8f0fcb67b',
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
    'id' => 'c0e179cf-9c3a-8634-d12e-59b8f0bd41b0',
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