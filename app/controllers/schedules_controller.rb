class SchedulesController < ApplicationController
  def index
    @scheduale = Schedule.new
  end
end
