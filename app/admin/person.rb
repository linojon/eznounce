ActiveAdmin.register Person do
  form do |f|
    f.inputs do
      f.input :name
      f.input :address_email
      f.input :groups, as: :select, collection: Hash[Group.all.map{|group| [group.name, group.id]} ]
    end
    f.actions
  end
end
