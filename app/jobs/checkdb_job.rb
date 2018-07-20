class CheckdbJob < ApplicationJob
  queue_as :default

  def perform(*args)
    #UserwishMailer.send_digest_email
    puts "vanthuduchu"
  end
end
