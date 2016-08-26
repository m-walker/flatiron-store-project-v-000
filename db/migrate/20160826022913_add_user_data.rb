class AddUserData < ActiveRecord::Migration
  def change
    User.create(
      email: "test@gmail.com",
      password: "password")
  end
end
