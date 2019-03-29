require 'sinatra/base'

module SlackTCFbot
  class Web < Sinatra::Base
    get '/' do
      'Hello world.'
    end
  end
end