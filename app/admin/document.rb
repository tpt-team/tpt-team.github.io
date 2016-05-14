ActiveAdmin.register Document do
  permit_params :title, :description, :points, :confirmed, :category_id, :user_id, :university_id
end
