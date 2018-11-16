module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Joe Quattrone | Full-Stack Developer Portfolio"
    @seo_keywords = "Joe Quattrone portfolio"
  end
end
