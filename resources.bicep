// example: '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-name/providers/Microsoft.DevCenter/dc-name'
param resourceId string

// example: 'dc-name'
var name = empty(resourceId) ? '' : last(split(resourceId, '/'))

// example: 'Microsoft.DevCenter'
var provider = empty(resourceId) ? '' : first(split(last(split(resourceId, '/providers/')), '/'))

// example: 'rg-name'
// note: resource ids come back including both resourceGroups and resourcegroups (lowercase G), so we need to handle both
var resource_group_name = empty(resourceId) ? '' : first(split(last(split(replace(resourceId, 'resourceGroups', 'resourcegroups'), '/resourcegroups/')), '/'))

// example: '00000000-0000-0000-0000-000000000000'
var subscription_id = empty(resourceId) ? '' : first(split(last(split(resourceId, '/subscriptions/')), '/'))

// example: '/subscriptions/00000000-0000-0000-0000-000000000000'
var subscription_rid = '/subscriptions/${subscription_id}'

// example: '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-name'
var resource_group_id = '/subscriptions/${subscription_id}/resourceGroups/${resource_group_name}'

output subscription_id string = subscription_id
output subscription_rid string = subscription_rid
output resource_group_name string = resource_group_name
output resource_group_id string = resource_group_id
output provider string = provider
output name string = name
