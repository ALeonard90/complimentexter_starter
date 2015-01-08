require 'twilio-ruby'

class Notification
  attr_accessor :to_number

   def initialize(options={})
    self.to_number = options[:to_number]
    account_sid = ENV["twilio_sid"]
    auth_token =  ENV["twilio_token"]
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def text
    new_text = @client.messages.create(
      from: '+12405284954',
      to: '+17034054053',
      body: random_compliment,
      )
  end

  def random_compliment
    compliments = ["You guys have got some eyes.", "Who's this handsome guy!", "You've got some killer eyes. The girls are in trouble.", "You get right in here, baby.", "As they say in Southern Delaware, you've done good, boy."]
    return compliments.sample
  end
end