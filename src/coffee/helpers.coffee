

#
# Helper Functions
#


String::toObject = ->
  o = {}
  @.replace(
    new RegExp("([^?=&]+)(=([^&]*))?", "g"), ($0, $1, $2, $3) ->
      o[$1] = $3
  )
  return o

delay = (time, callback) ->
  setTimeout ->
    callback.call()
  , time

shuffle = (array) ->
  m = array.length
  t = undefined
  i = undefined
  while m
    i = Math.floor(Math.random() * m--)
    t = array[m]
    array[m] = array[i]
    array[i] = t
  array