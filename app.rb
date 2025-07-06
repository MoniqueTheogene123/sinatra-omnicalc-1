require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/square/new") do
  erb(:square_new)
end

get("/square_root/new") do
  erb(:square_root_new)
end

get("/square/results") do
  @number = params.fetch("square_results").to_i
  square = number * number
  erb(:square_results)
end

# get("/random/new")
#   erb(:random_new)
# end

# get("/payment/new")
#   erb(:payment_new)
# end
