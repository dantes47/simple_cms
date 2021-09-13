# frozen_string_literal: true

# class Demo Controller
class DemoController < ApplicationController
  layout false

  def index
    # render('demo/index')
  end

  def hello
    @array = %i[1 2 3 4 5 6]
    @id = params[:id]
    @page = params[:page]

    # additional renders
    # render('demo/hello')
    # redirect_to(controller: 'demo', action: 'index')
  end

  def about
    if params[:id] == 'us' || params[:id] == 'ca'
      @phone = '(800) 555-6789'
    elsif params[:id] == 'uk'
      @phone = '(020) 7946 1234'
    else
      @phone = '+1 (987) 654-3210'
    end
  end

  def contact
    @country = lambda do
      params[:id] == 'us' || params[:id] == 'ca' ?
      '(800) 555-6789' : params[:id] == 'uk' ?
      '(020) 7946 1234' : '+1 (987) 654-3210'
    end.call
  end
end
