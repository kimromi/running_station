# frozen_string_literal: true

module RunningStation
  class ApplicationMailer < ActionMailer::Base
    default from: "from@example.com"
    layout "mailer"
  end
end
