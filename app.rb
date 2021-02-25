require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        @session = session
        erb :index
    end

    post '/checkout' do
        @item = params[:item]
        session[:item] = @item
        @session = session
        erb :checkout
    end
end