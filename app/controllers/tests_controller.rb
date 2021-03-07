class TestsController < ApplicationController

  before_action :authenticate_user!
  before_action :find_test, only: %i[show destroy edit update start]
  before_action :find_user, only: :start

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_record_not_found

  def index
    @tests = Test.all
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)
    if @test.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    @test.update(test_params)
    redirect_to root_path
  end

  def destroy
    @test.destroy
    redirect_to root_path
  end

  def start
    @user.tests.push(@test)
    redirect_to @user.test_passage(@test)
  end

  private

  def test_params
    params.require(:test).permit(:title, :level, :category_id, :author_id)
  end

  def find_test
    @test = Test.find(params[:id])
  end

  def find_user
    @user = User.first
  end

  def rescue_with_record_not_found
    render plain: 'record not found'
  end
end
