class User < SwellMedia::User
	enum role: { 'member' => 1, 'moderator' => 2, 'admin' => 3 }
	enum status: { 'unregistered' => -1, 'pending' => 0, 'active' => 1, 'revoked' => 2, 'archive' => 3, 'trash' => 4 }
	enum rewards_status: { 'rewards_rejected' => -2, 'rewards_pending' => 0, 'rewards_active' => 1, 'rewards_revoked' => 2 }


	validates 	:name, uniqueness: { case_sensitive: false }, if: :validate_name_uniqueness?
	validates 	:name, format: { with: /\A[a-zA-Z0-9_]{2,64}\z/ }, unless: :unregistered?

	

	has_many :measurements



  	# Plugins ---------------------

	devise 		:database_authenticatable, :omniauthable, :registerable, :recoverable, :rememberable, :trackable, authentication_keys: [ :login ]

	# over-riding Deivse method to allow login via name or email
	def self.find_first_by_auth_conditions( warden_conditions )
		conditions = warden_conditions.dup
		if login = ( conditions.delete( :login ) || conditions.delete( :email ) )
			where( conditions ).where( ["lower(name) = :value OR lower(email) = :value", { :value => login.downcase }] ).first
		else
			where( conditions ).first
		end
	end



	def facebook_credential
		oauth_credentials.where(provider: 'facebook').order(created_at: :desc).first
	end


	def twitter_credential
		oauth_credentials.where(provider: 'twitter').order(created_at: :desc).first
	end

	def address
		addr = "#{self.shipping_name} #{self.address1} #{self.address2} #{self.city}, #{self.state} #{self.zip}"
		return "None" if addr.gsub( ',' '' ).blank?
		return addr
	end




	def title
		self.full_name
	end


	private



	def validate_name_uniqueness?
		puts "validate_name_uniqueness? #{not(self.unregistered?) && name.present? && ( name_was.nil? || name_was != name )}"
		not(self.unregistered?) && name.present? && ( name_was.nil? || name_was != name )
	end


	def name_allowed?
		return true if self.name.blank?
		if SwellMedia::reserved_words.include?( self.name ) && not( self.admin? )
			self.errors.add( :name, "Invalid Name" )
			return false
		end
	end



end