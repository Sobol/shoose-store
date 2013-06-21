class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :evaluate_pagination_params

  private

  def evaluate_pagination_params
    if params.has_key?(:page) && params[:page].blank?
      params[:page] = 1
    end

    if params.has_key?(:per_page) && params[:per_page].blank?
      params[:per_page] = 12
    end
  end
end
