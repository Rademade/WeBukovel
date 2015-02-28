class RademadeAdmin::UsersController < RademadeAdmin::ModelController

  options do
    list :email
    form do
      first_name
      last_name
      email
      password
      admin
    end
  end
  
end
