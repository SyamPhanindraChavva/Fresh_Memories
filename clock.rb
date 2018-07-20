require 'clockwork'
require './config/boot'
require './config/environment'

module Clockwork
  handler do |job|
  puts "Running #{job}"

end
every(1.hour,"performing job"){
  MailWorker.perform_async
}
end
