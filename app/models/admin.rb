class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :recoverable, :rememberable, :lockable, :timeoutable and :omniauthable, :registerable,
  devise :database_authenticatable, :lockable,
          :trackable, :validatable
end
