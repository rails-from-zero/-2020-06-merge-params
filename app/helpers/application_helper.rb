module ApplicationHelper
  def order_by(direction)
    params
      .to_unsafe_h
      .merge(order: direction, only_path: true)
      .except(:script_name, :original_script_name)
  end
end
