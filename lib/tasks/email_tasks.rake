desc 'send digest email'
task send_digest_email: :environment do
  # ... set options if any
  UserwishMailer.digest_email_update(options).deliver!
end
