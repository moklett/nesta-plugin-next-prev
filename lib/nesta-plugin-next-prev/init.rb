module Nesta
  module Plugin
    module NextPrev
      module Helpers
        def next_page_in_menu
          relative_page_in_menu(1)
        end

        def prev_page_in_menu
          relative_page_in_menu(-1)
        end

        def link_to_next_page_in_menu(anchor_text = nil)
          link_to_relative_page_in_menu(1, anchor_text)
        end

        def link_to_prev_page_in_menu(anchor_text = nil)
          link_to_relative_page_in_menu(-1, anchor_text)
        end

        private

        def relative_page_in_menu(offset)
          page = @page
          menu_items = @menu_items.flatten

          page_index = menu_items.index(page)
          return nil if page_index.nil?

          target_index = page_index + offset
          return nil if target_index < 0 || target_index > menu_items.size

          menu_items[target_index]
        end

        def link_to_relative_page_in_menu(offset, anchor_text)
          target_page = relative_page_in_menu(offset)

          if target_page
            anchor_text ||= target_page.heading
            %{<a href="#{url(target_page.abspath)}">#{anchor_text}</a>}
          else
            ""
          end
        end
      end
    end
  end

  class App
    helpers Nesta::Plugin::NextPrev::Helpers
  end
end
