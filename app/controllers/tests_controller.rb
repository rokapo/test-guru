class TestsController < ApplicationController
  before_action :find_test, only: %i[show destroy edit update]

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

  private

  def test_params
    params.require(:test).permit(:title, :level, :category_id, :author_id)
  end

  def find_test
    @test = Test.find(params[:id])
  end

  def rescue_with_record_not_found
    render plain: 'record not found'
  end
end
