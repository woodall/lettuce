require_dependency "filer/application_controller"

module Filer
  class MonthsController < ApplicationController
    before_action :set_month, only: [:show, :edit, :update, :destroy]

    def index
      @months = Month.all
    end

    def show
      @source = Source.new
      @sources = Source.where(month_id: params[:id])
    end

    def new
      @month = Month.new
    end

    def edit
    end

    def create
      @month = Month.new(month_params)

      if @month.save
        redirect_to @month, notice: 'Month was successfully created.'
      else
        render :new
      end
    end

    def update
      if @month.update(month_params)
        redirect_to @month, notice: 'Month was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @month.destroy
      redirect_to months_url, notice: 'Month was successfully destroyed.'
    end

    private
      def set_month
        @month = Month.find(params[:id])
      end

      def month_params
        params.require(:month).permit(:name)
      end
  end
end
