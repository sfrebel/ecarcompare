# frozen_string_literal: true

module ApplicationHelper
  def sortable(column, title = nil)
    title ||= Car.human_attribute_name(column)
    css_class = column.to_s == sort_column ? "current #{sort_direction}" : nil
    direction = column.to_s == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
  end
end
