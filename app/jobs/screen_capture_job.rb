class ScreenCaptureJob < ApplicationJob
  queue_as :default

  def perform(site_id)
     site = Site.find(site_id)
     site.process!
  end
end
