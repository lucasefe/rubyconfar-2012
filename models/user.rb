class User < Sequel::Model
  
  def self.create_from(attributes)
    attributes = attributes['info']
    uid = attributes['uid']
    attributes.select! {|k, v| %w(nickname image name location).include?(k) }
    user = User.filter(uid: uid).first
    user ||= create uid: uid
    user.update attributes
    user
  end
end