class Author
  include Mongoid::Document
  field :username, type: String
  field :email, type: String
  field :password, type: String
end
