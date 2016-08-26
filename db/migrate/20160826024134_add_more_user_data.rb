class AddMoreUserData < ActiveRecord::Migration
  def change
    User.create(
      email: "test@yahoo.com",
      password: "password")
  end
end
