module ApplicationHelper
  def selected_item_class(path)
    recognized_path = Rails.application.routes.recognize_path path

    controller.controller_name == recognized_path[:controller] ? "selected" : ""
  end
end
