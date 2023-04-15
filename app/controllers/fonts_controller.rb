class FontsController < ApplicationController
  def show
    font = params[:id]
    path = Rails.root.join('app', 'assets', 'fonts', font)
    send_file path, type: 'font/ttf', disposition: 'inline'
  end
end
