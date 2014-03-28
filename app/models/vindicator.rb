class Vindicator < ActiveRecord::Base
  belongs_to :user
  belongs_to :donation
end
