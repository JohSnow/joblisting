class JobsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end
end
