require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get ('/result') do
  side_1 = params.fetch('side_1').to_i()
  side_2 = params.fetch('side_2').to_i()
  side_3 = params.fetch('side_3').to_i()
  @triangle = Triangle.new(side_1, side_2, side_3)
  erb(:result)
end
