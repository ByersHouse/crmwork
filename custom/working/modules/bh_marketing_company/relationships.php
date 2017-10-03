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
  'bh_marketing_company_bh_channels_impact_1' => 
  array (
    'id' => '98062d68-30d2-6399-5668-59d36ef604e2',
    'relationship_name' => 'bh_marketing_company_bh_channels_impact_1',
    'lhs_module' => 'bh_marketing_company',
    'lhs_table' => 'bh_marketing_company',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_channels_impact',
    'rhs_table' => 'bh_channels_impact',
    'rhs_key' => 'id',
    'join_table' => 'bh_marketing_company_bh_channels_impact_1_c',
    'join_key_lhs' => 'bh_marketid0c7company_ida',
    'join_key_rhs' => 'bh_marketing_company_bh_channels_impact_1bh_channels_impact_idb',
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
  'bh_marketing_company_bh_marketing_company_history_1' => 
  array (
    'id' => '9844aa30-5c6c-c9c8-3642-59d36e027635',
    'relationship_name' => 'bh_marketing_company_bh_marketing_company_history_1',
    'lhs_module' => 'bh_marketing_company',
    'lhs_table' => 'bh_marketing_company',
    'lhs_key' => 'id',
    'rhs_module' => 'bh_marketing_company_history',
    'rhs_table' => 'bh_marketing_company_history',
    'rhs_key' => 'id',
    'join_table' => 'bh_marketing_company_bh_marketing_company_history_1_c',
    'join_key_lhs' => 'bh_marketi1e9fcompany_ida',
    'join_key_rhs' => 'bh_marketid398history_idb',
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
  'bh_marketing_company_bh_marketing_directorate_1' => 
  array (
    'id' => '9883260e-e18f-5fef-944c-59d36e1a8724',
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
    'id' => '98c1a8e9-c64a-7922-a210-59d36e94b105',
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
    'id' => 'a818a970-7f81-270a-dc58-59d36ead7912',
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
    'id' => 'a8572346-e305-43d0-5b6f-59d36e416817',
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
    'id' => 'a895a6fb-88b8-3d88-3ae4-59d36e02123e',
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
    'id' => 'a8d42675-d4cb-e3c7-7336-59d36e5c5ad4',
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
  'bh_marketing_company_bh_campaine_products_1' => 
  array (
    'rhs_label' => 'Продукты компании',
    'lhs_label' => 'Маркетинговая компания',
    'rhs_subpanel' => 'default',
    'lhs_module' => 'bh_marketing_company',
    'rhs_module' => 'bh_campaine_products',
    'relationship_type' => 'one-to-many',
    'readonly' => false,
    'deleted' => false,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => false,
    'relationship_name' => 'bh_marketing_company_bh_campaine_products_1',
  ),
);