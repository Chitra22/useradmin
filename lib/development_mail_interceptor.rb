class DevelopmentMailInterceptor
def self.delivering_email(message)
   message.subject = "#{message.to} #{message.subject}"
   message.to = "senthikumar15496@gmail.com"
 end
end