class UserSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :email, :address
  end