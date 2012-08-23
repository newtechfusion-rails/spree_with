Deface::Override.new(:virtual_path  => "spree/home/index",
                     :insert_before  => "[data-hook='homepage_sidebar_navigation']",
                     :text          => "<%=link_to('Feedback',:controller=>'spree/feedback',:action=>'feedback')%>",
                     :name          => "feedback_override")

