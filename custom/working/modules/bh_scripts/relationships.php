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
    'id' => '15ef3dc6-fc47-3f6f-7d65-59bb75b21043',
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
  'bh_scripts_bh_script_param_response_1' => 
  array (
    'id' => '162c4fbe-dbfe-4947-b05d-59bb7531aa96',
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
  'bh_scripts_bh_scr_status_history_1' => 
  array (
    'id' => '16694448-f0c9-b028-e753-59bb75665834',
    'relationship_name' => 'bh_scripts_bh_scr_status_history_1',
    'lhs_module' => 'bh_scripts',
    'lhs_table' => 'bh_scripts',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_scr_status_history',
    'rhs_table' => 'bh_scr_status_history',
    'rhs_key' => 'id',
    'join_table' => 'bh_scripts_bh_scr_status_history_1_c',
    'join_key_lhs' => 'bh_scripts_bh_scr_status_history_1bh_scripts_ida',
    'join_key_rhs' => 'bh_scripts_bh_scr_status_history_1bh_scr_status_history_idb',
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
    'id' => '835e5e35-5602-981c-f903-59bb75bf0b03',
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
    'from_studio' => true,
  ),
  'bh_scripts_created_by' => 
  array (
    'id' => '839b6fb0-0bdc-f6e0-6188-59bb752e3689',
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
    'from_studio' => true,
  ),
  'bh_scripts_assigned_user' => 
  array (
    'id' => '83d879a1-4873-a39a-a9e3-59bb755f8bee',
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
    'from_studio' => true,
  ),
  'securitygroups_bh_scripts' => 
  array (
    'id' => '84528873-1da0-c0a7-af68-59bb75fcd48d',
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
    'from_studio' => true,
  ),
  'bh_scripts_bh_scripts_leadership_recommend_1' => 
  array (
    'rhs_label' => 'Скрипты рекомендации руководства',
    'lhs_label' => 'Скрипты',
    'rhs_subpanel' => 'default',
    'lhs_module' => 'bh_scripts',
    'rhs_module' => 'bh_Scripts_leadership_recommend',
    'relationship_type' => 'one-to-many',
    'readonly' => true,
    'deleted' => false,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => true,
    'relationship_name' => 'bh_scripts_bh_scripts_leadership_recommend_1',
  ),
);