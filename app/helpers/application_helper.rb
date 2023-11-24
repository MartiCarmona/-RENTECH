module ApplicationHelper
  module ApplicationHelper
    def user_profile_image(user, image_class)
      if user.respond_to?(:profile_image) && user.profile_image.attached?
        image_tag(user.profile_image, class: image_class)
      else
        image_tag('profile.svg.png', class: image_class) # Use your default image
      end
    end
  end
end
