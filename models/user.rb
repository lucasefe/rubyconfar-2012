class User < Sequel::Model
  
  def self.create_from(provider, attributes)
    attributes = attributes['info']
    uid = attributes.delete('uid')
    attributes.select! {|k, v| %w(nickname image name location).include?(k) }
    User.filter(uid: uid).first.tap do
      user ||= create uid: uid
      user.update attributes
    end
  end
end