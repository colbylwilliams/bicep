// docs: https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/loops#loop-syntax

param test_array array = [
  'Dev'
  'Test'
  'Prod'
]

param test_object object = {
  Dev: '5ec0405b-15be-4b88-b520-8725e400c282'
  Test: '4adee40b-e41a-48a8-92be-256347b9bea5'
  Prod: '47824ac7-73ee-4cec-900f-874aaf6807bd'
}

module test_arrays 'test.bicep' = [for test in test_array: {
  name: 'arr-test-${test}'
  params: {
    key: test // 'Dev'
    value: test_object[test] // GUID
  }
}]

module test_objects 'test.bicep' = [for test in items(test_object): {
  name: 'obj-test-${test.key}'
  params: {
    key: test.key // 'Dev'
    value: test.value // GUID
  }
}]

param nsgValues object = {
  nsg1: {
    name: 'nsg-westus1'
    location: 'westus'
  }
  nsg2: {
    name: 'nsg-east1'
    location: 'eastus'
  }
}

resource nsg 'Microsoft.Network/networkSecurityGroups@2020-06-01' = [for nsg in items(nsgValues): {
  name: nsg.value.name
  location: nsg.value.location
}]
