class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def form
  end

  def search
    @date = params[:date]
    @address = params[:address]
    # limiter aux pigeons qui n'ont pas la date dans booking sur un booking validé
    @pigeons = Pigeon.near(@address, 10).geocoded
    @markers = @pigeons.map do |pigeon|
      {
        lat: pigeon.latitude,
        lng: pigeon.longitude,
        info_window: render_to_string(partial: "info_window", locals: { pigeon: pigeon }),
        image_url: helpers.asset_url("bird.png")
      }
    end
    # raise
  end
end
