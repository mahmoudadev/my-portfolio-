module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Mahmoud Abdelmoneim | Portofolio & Blog"
    @seo_keywords = "Software Engineer, Web Development, Web Developer, Ruby, RubyONRails"
  end

end