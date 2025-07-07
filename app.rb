require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/square/new") do
  erb(:square_calc_new)
end

get ("/square/results") do
  @the_num = params.fetch("user_number").to_f

  @the_result = @the_num ** 2

  erb(:square_results)
end


get("/square_root/new") do
  erb(:square_root_calc_new)
end

get ("/square_root/results") do
  @the_num_root = params.fetch("user").to_f

  @the_result_root = @the_num_root ** 0.5

  erb(:square_root_results)
end
