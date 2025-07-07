require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/square/new") do
  erb(:square_root_new)
end

get ("/square/results") do
  @the_num = params.fetch("user_number").to_f

  @the_result = @the_num ** 2

  erb(:square_results)
end
