class Admin::Authenticator
 def initialize(admin_member)
    @admin_member = admin_member
  end

  def authenticate(raw_passwrod)
    @admin_member &&
    @admin_member.hashed_password &&
    # @admin_member.start_date <= Date.today &&
    # (@admin_member.end_date.nil? ||
    #  @admin_member.end_date > Date.today ) &&
     BCrypt::Password.new(@admin_member.hashed_password) ==
     raw_passwrod
   end
 end
