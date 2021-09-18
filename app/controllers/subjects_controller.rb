# frozen_string_literal: true

# class Subjects Controller
class SubjectsController < ApplicationController
  def index
    @subjects = Subject.order('position ASC')
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)

    @subject.save ? redirect_to(subjects_path) : render('new')
  end

  def edit; end

  def update; end

  def delete; end

  def destroy; end

  private

  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end
end
