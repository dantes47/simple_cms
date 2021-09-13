# frozen_string_literal: true

# class Users Controller
class UsersController < ApplicationController
  def action
    @users = %w[manny danny john]
  end
end
