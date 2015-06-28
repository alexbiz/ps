module PagesHelper
  def title
    base_title = "IVFqc"
    if @title.nil?
      base_title
    else
      "#{@title} | #{base_title}"
    end
  end
end
