class User < ApplicationRecord
  has_many :units, through: :assignments

  def self.create_with_auth(auth)
    create! do |user|
      user.steamid = auth['uid']
    end
  end
end