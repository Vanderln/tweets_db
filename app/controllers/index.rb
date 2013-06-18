get '/' do
  erb :index
end

# get '/:username' do
#   username = params[:username]
#   tweets = if Tweet.find_all_by_author(username).any?
#     if Tweet.stale(Tweet.find_all_by_author(username))
#       Tweet.destroy_all(author: username)
#       Tweet.save_all(Tweet.grab_ten(username))
#     else
#       Tweet.grab_ten(username)
#     end
#   else
#     Tweet.grab_ten(username)
#   end
#   erb :_tweets, locals: { tweets: tweets }, layout: false
# end


post "/tweet" do
  # p params.inspect
  # @tweet = Twitter.update(params[:tweet])
  @tweet = nil
  if @tweet 
    return "Tweet sent to the inter-tubez"
  else
    return "Oh noes! Tweet blew-up!"
  end

end
