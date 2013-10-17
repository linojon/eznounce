ActiveAdmin.register Group do

  form do |f|
    f.inputs do
      f.input :name
      f.input :people, as: :select, collection: Hash[Person.all.map{|person| [person.name, person.id]} ]
    end
    f.actions
  end
end
