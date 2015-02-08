json.cache! task do
  json.id task.id
  json.name task.name
  json.description task.description
  json.time task.time
  json.user do
    json.device_token task.user.device_token
  end
end
