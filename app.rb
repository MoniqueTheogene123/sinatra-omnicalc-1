require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/square/new") do
  erb(:homepage)
end

# get("/square_route/new")
#   erb(:square_route_new)
# end


# get("/random/new")
#   erb(:random_new)
# end

# get("/payment/new")
#   erb(:payment_new)
# end
