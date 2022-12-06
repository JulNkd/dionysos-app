class Twilio
  def self.send_sms(content, phone_number)
    account_sid = ENV['account_sid']
    auth_token = ENV['auth_token']


    @client = Twilio::REST::Client.new(account_sid, auth_token)


    @client.messages.create(
    from: ENV['TWILIO_PHONE_NUMBER'],
    to: phone_number,
    body: content
    )
  end
end
