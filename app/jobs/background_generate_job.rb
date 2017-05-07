class BackgroundGenerateJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    infos = Info.all
    infos.each do |info|
    	if info.birthday==Date.today
      mail=Mailer.happy_birthday_mailer(info).deliver_now
      sleep 5
    end
  end
end
end