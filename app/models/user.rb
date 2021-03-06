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

  has_many   :followers,
             :through => :received_friend_requests,
             :source => :sender

  has_many   :following,
             :through => :sent_friend_requests,
             :source => :recipent

  has_many   :favorites,
             :through => :likes,
             :source => :photo

  # Validations

end
