class MailWorker

  include Sidekiq::Worker

  def perform(*args)
    users=User.all
    users.each do |x|
      
    UserwishMailer.send_digest_email(x).deliver_now

  end
    puts "Hi"
  end

end
