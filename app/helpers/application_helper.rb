# frozen_string_literal: true

# module Application Helper
module ApplicationHelper
  def error_messages(object)
    render(partial: 'application/error_messages', locals: { object: object })
  end
end
