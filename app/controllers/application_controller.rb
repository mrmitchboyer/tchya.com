class ApplicationController < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }
  set :session_secret, "my_application_secret"
  enable :sessions

  get '/' do
    erb :index
  end

  get '/portfolio/video/:id' do
    @video_id = params[:id]
    erb :video
  end

end