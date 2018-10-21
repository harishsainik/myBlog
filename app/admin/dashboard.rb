ActiveAdmin.register_page "Dashboard" do
  menu :priority => 1
  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Posts" do
          table_for Post.order("id desc").limit(15) do
            column :id
            column :title do |post|
              link_to post.title, [:admin, post]
            end
            column :category,:sortable => :category
            column :admin_user
            column :created_at
          end
          strong (link_to "Show All Posts" , :posts )
        end
      end
    end

    columns do
      column do
        panel "Categories" do
          table_for Category.order("id desc").limit(15) do
      			column :id
      			column "Category Title",:title do |category|
      				link_to category.title,[:admin,category]
      			end
      			column :created_at
      		end
      		strong {link_to "Show All Categories",:admin_categories}
        end
      end
    end

  end



end
