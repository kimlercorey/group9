ActiveAdmin.register Item do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :details, :category_id, :image
  
  
show do |item|
  attributes_table do
    row :id
    row :title
    row :image do  
      image_tag(item.image.url)
    end
    row :details
    row :link do
      link_to(@item)
    end
  end
end

  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
