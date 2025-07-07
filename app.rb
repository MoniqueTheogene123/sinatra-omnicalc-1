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

get("/payment/new") do
  erb(:payment_calc_new)
end

get ("/payment/results") do
  @user_apr = params.fetch("user_apr").to_f
  @user_years = params.fetch("user_years").to_f
  @user_pv = params.fetch("user_pv").to_f

  @monthly_payment = pp @user_apr / 50

  erb(:payment_results)
end
