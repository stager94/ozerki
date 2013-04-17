ActiveAdmin.register_page "Dashboard" do
  I18n.locale = :ru
  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    # div :class => "blank_slate_container", :id => "dashboard_default_message" do
    #   span :class => "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "#{I18n.t 'admin.recent.post'}" do
          ul do
            New.order('created_at DESC').last(5).map do |post|
              li link_to(post.title, admin_news_path(post))
            end
          end
        end
      end

      column do
        panel "#{I18n.t 'admin.recent.testimonal'}" do
          ul do
            Testimonal.order('created_at DESC').last(5).map do |testimonal|
                li link_to(testimonal.testimonal, admin_testimonal_path(testimonal))
            end
          end
        end
      end
    end
  end # content
end
