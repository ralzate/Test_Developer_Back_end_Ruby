# frozen_string_literal: true

class WillPaginateLinkRenderer < WillPaginate::LinkRenderer
  def link(text, target, attributes = {})
    attributes['data-remote'] = true
    attributes['class'] = 'pagination'
    super
  end
end
