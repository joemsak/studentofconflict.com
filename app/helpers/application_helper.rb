module ApplicationHelper
  def browser_title
    if content_for?(:browser_title)
      content_for(:browser_title)
    elsif content_for?(:browser_title_prefix)
      "#{content_for(:browser_title_prefix)} &bullet; #{t("site.title")}"
    else
      t("site.title")
    end
  end
end
