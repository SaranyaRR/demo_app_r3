class User < ApplicationRecord
  has_many :microposts
  has_many_through :users_microsposts
  validate :name_correctness

  def count_of_users

    User.all.count
    # return User.all.count
  end

  def all_microposts_for(user_id)
    user = User.find(user_id)
    # select * from users where id = user_id limit 1;
    user.microposts
    user.microposts.comments
  end

  def name_correctness
  	if name.blank?
      errors.add(:name, "name is blank")
    end
  end
end
