class AddAdmin < ActiveRecord::Migration[6.0]
  def change
    User.create! do |u|
      u.email = 'teacher@hmail.com'
      u.password = 'teacher'
      u.admin = true
    end
  end
end
