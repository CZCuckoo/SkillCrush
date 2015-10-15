require 'rubygems'
require 'twilio-ruby'

def random_number
  number = 1 + rand(20)
  return number
end

def outlook(number)
  case number
  when 1
    fortune = "It is certain"
  when 2
    fortune = "It is decidedly so."
  when 3
    fortune = "Without a doubt."
  when 4
    fortune = "Yes, definitely."
  when 5
    fortune = "You may rely on it."
  when 6
    fortune = "As I see it, yes."
  when 7
    fortune = "Most likely."
  when 8
    fortune = "Outlook good."
  when 9
    fortune = "Yes."
  when 10
    fortune = "Signs point to yes."
  when 11
    fortune = "Reply hazy try again"
  when 12
    fortune = "Ask again later."
  when 13
    fortune = "Better not tell you now."
  when 14
    fortune = "Cannot predict now."
  when 15
    fortune = "Concentrate and ask again."
  when 16
    fortune = "Don't count on it."
  when 17
    fortune = "My reply is no."
  when 18
    fortune = "My sources say no."
  when 19
    fortune = "Outlook not so good."
  when 20
    fortune = "Very doubtful."
  end
end

puts "What is your question?"
question = gets.chomp
number = random_number
fortune = outlook(number)

account_sid = "ACa3e9ae32fa703dc039771ec8aa75379a"
auth_token = "004e68e8816cf3313ecfd57e7c1a9ce4"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
  :from =>"(617) 819-8551",
  :to => "(603) 943-0184",
  :body => "The answer to your question #{question}: #{fortune}"
)
#
# puts message.to
