class User
    include Mongoid::Document
    include ActiveModel::SecurePassword
    include ActiveModel::SecureToken
    include Mongoid::Timestamps

    field :email, type: String
    field :password_digest, type: String
    field :token, type: String

    validates_presence_of :email, :password
    validates_uniqueness_of :email
    validates_length_of :password, minimum: 8, maximum: 16
    has_secure_password
    has_secure_token

    def invalidate_token
        self.update(token: nil)
    end

    def self.valid_login?(email, password)
        user = find_by(email: email)
        if user && user.authenticate(password)
            user
        end
    end

end
