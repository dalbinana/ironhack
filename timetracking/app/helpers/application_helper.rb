module ApplicationHelper

		if flash[:alert]
      content_tag :div, class: 'message alert' do
        content_tag :p do
          flash[:alert]
        end
      end
  elsif flash[:notice]
      content_tag :div, class: 'message notice' do
        content_tag :p do
          flash[:notice]
        end
      end
  end
end
# Solucion pijoteras para hacer lo mismo
#      def flash_message
#         unless flash.empty?
#             content_tag :div, class: 'message' do
#                 flash.each do |key, mess|
#                     content_tag :span, class: "#{key}" do
#                         mess
#                     end
#                 end
#             end
#         end
#     end    


end

