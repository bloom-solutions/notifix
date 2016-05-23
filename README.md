# Notifix

General purpose Rails engine to enable SMS notificiations via Twilio.

## Usage

Configure:

```ruby
Notifix.configure do |c|
  c.sms_via(:twilio, {sid: "SID", auth_token: "AUTH-TOKEN"})
end
```

```ruby
sms_message = Notifix::SMSMessage.deliver("Thanks for registering", to: "+639189898989")
sms_message.to # "+639189898989"
sms_message.message # "Thanks for registering"
```

We recommend that you send the SMS message via a background job:

```ruby
Notifix::SMSMessage.deliver_later("Thanks for registering", to: "+639189898989")
```
