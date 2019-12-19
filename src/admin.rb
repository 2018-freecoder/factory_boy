# Model we use
class Admin
  attr_reader :user

  def initialize(hash)
    @user = hash[:user]
  end
end