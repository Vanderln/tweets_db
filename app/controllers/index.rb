get '/' do
  @tweets = Tweet.grab_ten("Vanderln")
  erb :index
end

get '/:username' do
  username = params[:username]
  @tweets = if p Tweet.stale(Tweet.find_all_by_author(username))
    Tweet.destroy_all(username: username)
    Tweet.save_all(Tweet.grab_ten(username))
  else
    Tweet.grab_ten(username)
  end
  erb :index
end


# problem: old tweets in database still there when we add new ones
# solution 1: clear db, refresh entire feed from twitter
# solution 2: don't clear db, only grab tweets that are younger than 
# youngest tweet in db
 
# take an array of 10 tweets
# sort by created_at
# each____(2) pulls out every consecutive sequence of 2
# map the resulting array of arrays into: the difference between created_at for each pair
# reduce() down to the average
