module SlackTCFbot
  class Bot < SlackRubyBot::Bot
    match /^(?<expression>[a-z\d\-_\s]*)\?$/ do |client, data, match|
      question = match[:expression].gsub(" ", "+")
      lmgtfy = "http://lmgtfy.com/?q=#{URI::encode(question)}"
      client.say(channel: data.channel, text: lmgtfy)
    end
  end
end