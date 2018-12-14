class User < ApplicationRecord
  def change
   create_table :users do |t|

      t.string :username
      t.srting :email

      t.timestamp
    end
  end
end
