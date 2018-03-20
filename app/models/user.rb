class User
    include Mongoid::Document
    include ActiveModel::SecurePassword
    include ActiveModel::SecureToken
    include Mongoid::Timestamps

    field :email, type: String
    field :password_digest, type: String
    field :token, type: String

    validates_presence_of :email, :password
    validates_uniqueness_of :email, "Email already taken"
    validates_length_of :password, minimum: 8, maximum: 16
    has_secure_password
    has_secure_token

end
