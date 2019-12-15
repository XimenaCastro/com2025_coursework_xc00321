class ApplicationMailer < ActionMailer::Base
  default to: "xc00321@surrey.ac.uk", from: "info@planeahead.com"
  layout 'mailer'
end
