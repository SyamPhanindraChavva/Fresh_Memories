require 'clockwork'
require './config/boot'
require './config/environment'

module Clockwork
  handler do |job|
  puts "Running #{job}"
  end
every(1.day,"performing job",:at => '01:55'){
  MailWorker.perform_async
}
every(1.day,"changing secrete key")
end
