# frozen_string_literal: true

# class Pages Controller
class PagesController < ApplicationController
  def index
    @pages = Page.order('position ASC')
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)

    @page.save ? redirect_to(pages_path) : render('new')
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update(page_params)
      redirect_to(pages_path(@page))
    else
      render('edit')
    end
  end

  def delete
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy

    redirect_to(pages_path)
  end

  private

  def page_params
    params.require(:page).permit(
      :name, :visible,
      :position, :permalink,
      :content, :subject_id
    )
  end
end
