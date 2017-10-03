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
  'bh_marketing_company_bh_marketing_directorate_1' => 
  array (
    'id' => '128a87f0-f727-d208-c4af-59d1f11834ab',
    'relationship_name' => 'bh_marketing_company_bh_marketing_directorate_1',
    'lhs_module' => 'bh_marketing_company',
    'lhs_table' => 'bh_marketing_company',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_marketing_directorate',
    'rhs_table' => 'bh_marketing_directorate',
    'rhs_key' => 'id',
    'join_table' => 'bh_marketing_company_bh_marketing_directorate_1_c',
    'join_key_lhs' => 'bh_marketia9b6company_ida',
    'join_key_rhs' => 'bh_marketi618ectorate_idb',
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
  'bh_marketing_company_bh_marketing_response_1' => 
  array (
    'id' => '12c90591-2294-e510-befa-59d1f1c0b999',
    'relationship_name' => 'bh_marketing_company_bh_marketing_response_1',
    'lhs_module' => 'bh_marketing_company',
    'lhs_table' => 'bh_marketing_company',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_marketing_response',
    'rhs_table' => 'bh_marketing_response',
    'rhs_key' => 'id',
    'join_table' => 'bh_marketing_company_bh_marketing_response_1_c',
    'join_key_lhs' => 'bh_marketi8c3ecompany_ida',
    'join_key_rhs' => 'bh_marketi8b4desponse_idb',
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
  'bh_marketing_company_modified_user' => 
  array (
    'id' => '6f894dff-52ba-e0ea-b91c-59d1f1d8825d',
    'relationship_name' => 'bh_marketing_company_modified_user',
    'lhs_module' => 'Users',
    'lhs_table' => 'users',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_marketing_company',
    'rhs_table' => 'bh_marketing_company',
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
  'bh_marketing_company_created_by' => 
  array (
    'id' => '6fc7c6f0-dcb4-d243-ad92-59d1f1847eb0',
    'relationship_name' => 'bh_marketing_company_created_by',
    'lhs_module' => 'Users',
    'lhs_table' => 'users',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_marketing_company',
    'rhs_table' => 'bh_marketing_company',
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
  'bh_marketing_company_assigned_user' => 
  array (
    'id' => '7006465b-cafa-7687-79c6-59d1f136a305',
    'relationship_name' => 'bh_marketing_company_assigned_user',
    'lhs_module' => 'Users',
    'lhs_table' => 'users',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_marketing_company',
    'rhs_table' => 'bh_marketing_company',
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
  'securitygroups_bh_marketing_company' => 
  array (
    'id' => '7044c2ef-c7ad-ebd3-3eb2-59d1f1b1aa48',
    'relationship_name' => 'securitygroups_bh_marketing_company',
    'lhs_module' => 'SecurityGroups',
    'lhs_table' => 'securitygroups',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_marketing_company',
    'rhs_table' => 'bh_marketing_company',
    'rhs_key' => 'id',
    'join_table' => 'securitygroups_records',
    'join_key_lhs' => 'securitygroup_id',
    'join_key_rhs' => 'record_id',
    'relationship_type' => 'many-to-many',
    'relationship_role_column' => 'module',
    'relationship_role_column_value' => 'bh_marketing_company',
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
  'bh_marketing_company_bh_marketing_company_history_1' => 
  array (
    'rhs_label' => 'Маркетинговая компания',
    'lhs_label' => 'Маркетинговая компания',
    'rhs_subpanel' => 'default',
    'lhs_module' => 'bh_marketing_company',
    'rhs_module' => 'bh_marketing_company_history',
    'relationship_type' => 'one-to-many',
    'readonly' => false,
    'deleted' => false,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => false,
    'relationship_name' => 'bh_marketing_company_bh_marketing_company_history_1',
  ),
);