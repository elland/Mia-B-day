class DisplayController < ApplicationController
  def index
		Message.create!(:content => "Mia, we love you!")
		@msgs = Message.all.in_groups_of(16)
		@msgs.each do |msg|
			msg.compact!
		end
		@count = Message.count
	end
end
