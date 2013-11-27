module ApplicationHelper
  # Return a title on a per-page basis.
 def title
    base_title = "Cheam Croquet & Bowls Club"
    secondary_title = "Programme "
    if @title.nil?
      base_title
    elsif @title == Time.now.year
      "#{base_title} | #{secondary_title} #{@title}" 
    else
      "#{base_title} | #{@title}"
    end
  end
end
