class User < ApplicationRecord
  # Direct associations

  has_many   :received_friend_requests,
             :class_name => "FriendRequest",
             :foreign_key => "recipent_id",
             :dependent => :destroy

  has_many   :sent_friend_requests,
             :class_name => "FriendRequest",
             :foreign_key => "sender_id",
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  has_many   :photos,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
