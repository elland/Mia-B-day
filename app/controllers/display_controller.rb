class DisplayController < ApplicationController
  def index
		if Message.all.empty?
			@msg = Message.create(:content => "")
		else
			@msg = Message.first
		end
		@msg.content += "Mia, we love you!<br/>"
		@count = @msg.content.split('<br/>').count
		@msg.save
		@msg = @msg.content.split('<br/>').in_groups_of(16)
		@msg.compact!
  end

end
