class User < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :username, :exclusion => { :in => [ 'qwerty', 'abcdef' ]  }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
