class DisplayController < ApplicationController
  def index
		Message.create!(:content => "Mia, we love you!")
		@msgs = Message.all
	end
end
