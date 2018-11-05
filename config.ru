require './standapp'
require './app/api/v1/stand_app_v1'
require './app/api/v2/stand_app_v2'

map('/')       { run StandApp }
map('/api/v2') { run StandAppV2 }
map('/api/v1') { run StandAppV1 }

run StandApp
