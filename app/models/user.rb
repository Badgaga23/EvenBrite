class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :events, foreign_key: 'admin_id', class_name: "Event"
    has_many :attendances
    has_many :participant_events, foreign_key: 'participant_id', class_name: "Event"
    

    # has_many :attendances
    # has_many :attending_events, foreign_key: 'attendant_id', class_name: "Event"
end
