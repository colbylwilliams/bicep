param obj1 object = {
  key1: 'value1'
  key2: 'value2'
  key3: 'value3'
  key4: 'value4'
  key5: 'value5'
  key6: 'value6'
}

param obj2 object = {
  key4: 'value4'
  key5: 'value5'
  key6: 'value6'
  key7: 'value7'
  key8: 'value8'
}

param arr1 array = [
  'value3'
  'value4'
  'value5'
  'value6'
]

param environmentTypes object = {
  Dev: ''
  Test: ''
  Prod: '67db7b75-5608-45d2-818f-e40fc63f5928'
}

param str1 string = 'value3'
// param str2 string = 'value4'

// var obj1Arr = reduce(map(items(obj1), t => [t.value]), [str1], (cur, next) => union(cur, next))

output reduced array = reduce(map(items(obj1), t => [ t.value ]), [ str1 ], (cur, next) => union(cur, next))

output subs array = filter(reduce(map(items(environmentTypes), t => [ t.value ]), [ subscription().subscriptionId ], (cur, next) => union(cur, next)), s => !empty(s))
