// ------------------
// General
// ------------------

// 8e3af657-a8ff-443c-a75c-2fe8c4bcb635 Owner
// b24988ac-6180-42a0-ab88-20f7382dd24c Contributor
// acdd72a7-3385-48ef-bd42-f606fba81ae7 Reader
// 18d7d88d-d35e-4fb5-a5c3-7773c20a72d9 User Access Administrator

// 5ae67dd6-50cb-40e7-96ff-dc2bfa4b606b App Configuration Data Owner
// 516239f1-63e1-4d78-a4de-a74fb236a071 App Configuration Data Reader

// 00482a5a-887f-4fb3-b363-3b7fe8e74483 Key Vault Administrator
// b86a8fe4-44ce-4948-aee5-eccb2c155cd7 Key Vault Secrets Officer
// 4633458b-17de-408a-b874-0445c86b69e6 Key Vault Secrets User

// 331c37c6-af14-46d9-b9f4-e1909e1b95a0 Dev Center Project Admin
// 45d50f46-0b78-4001-a660-4198cbe8cd05 Dev Center Dev Box User
// 18e40d4e-8d2e-438d-97e1-9528336e149c Dev Center Environments User

// docs: https://learn.microsoft.com/en-us/azure/role-based-access-control/built-in-roles#owner
var owner_role_id = '8e3af657-a8ff-443c-a75c-2fe8c4bcb635'
var owner_role_rid = subscriptionResourceId('Microsoft.Authorization/roleDefinitions', owner_role_id)

// docs: https://learn.microsoft.com/en-us/azure/role-based-access-control/built-in-roles#contributor
var contributor_role_id = 'b24988ac-6180-42a0-ab88-20f7382dd24c'
var contributor_role_rid = subscriptionResourceId('Microsoft.Authorization/roleDefinitions', contributor_role_id)

// docs: https://learn.microsoft.com/en-us/azure/role-based-access-control/built-in-roles#reader
var reader_role_id = 'acdd72a7-3385-48ef-bd42-f606fba81ae7'
var reader_role_rid = subscriptionResourceId('Microsoft.Authorization/roleDefinitions', reader_role_id)

// docs: https://learn.microsoft.com/en-us/azure/role-based-access-control/built-in-roles#user-access-administrator
var user_access_admin_role_id = '18d7d88d-d35e-4fb5-a5c3-7773c20a72d9'
var user_access_admin_role_rid = subscriptionResourceId('Microsoft.Authorization/roleDefinitions', user_access_admin_role_id)

// ------------------
// Key Vault
// ------------------

// docs: https://docs.microsoft.com/en-us/azure/role-based-access-control/built-in-roles#key-vault-secrets-officer
var key_vault_secrets_officer_role_id = 'b86a8fe4-44ce-4948-aee5-eccb2c155cd7'
var key_vault_secrets_officer_role_rid = subscriptionResourceId('Microsoft.Authorization/roleDefinitions', key_vault_secrets_officer_role_id)

// ------------------
// Dev Center
// ------------------

var dev_center_project_admin_role_id = '331c37c6-af14-46d9-b9f4-e1909e1b95a0'
var dev_center_project_admin_role_rid = subscriptionResourceId('Microsoft.Authorization/roleDefinitions', dev_center_project_admin_role_id)

var dev_center_devBox_user_role_id = '45d50f46-0b78-4001-a660-4198cbe8cd05'
var dev_center_devBox_user_role_rid = subscriptionResourceId('Microsoft.Authorization/roleDefinitions', dev_center_devBox_user_role_id)

var dev_center_environments_user_role_id = '18e40d4e-8d2e-438d-97e1-9528336e149c'
var dev_center_environments_user_role_rid = subscriptionResourceId('Microsoft.Authorization/roleDefinitions', dev_center_environments_user_role_id)
