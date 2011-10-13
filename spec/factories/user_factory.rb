Factory.build :user
Factory.define :user_with_avatar, :parent => :user do |u|
  u.after_create do |user|
    user.attachments = [ Factory.build(:avatar, :author => user) ]
  end
end