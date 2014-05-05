require_dependency "tasks/application_controller"

module Tasks
  class Taskables::Image::ResponsesController < ApplicationController
    include Concerns::Redirectable

    before_action :set_request

    def create
      response = @request.responses.new response_params
      response.author = send Tasks.config.author

      respond_to do |format|
        if response.save
          format.html { redirect_to redirect_path_for(response) }
        else
          format.html { render text: response.errors.full_messages, status: :unprocessable_entity }
        end
      end
    end

    private

    def response_params
      params.permit(:taskables_image_response).permit(:image)
    end

    def set_request
      @request = Taskables::Image::Request.find params[:request_id]
    end
  end
end
