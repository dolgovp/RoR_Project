class Task < ApplicationRecord
  belongs_to :user
  has_many_attached :answ_images
  has_many_attached :task_images
  validate :acceptable_image

  def acceptable_image
    #if task_images.attached? == false 
      #errors.add(:answ_images, "are missing")
    #end
    answ_images.each do |main_image|
      unless main_image.byte_size <= 1.megabyte
        errors.add(main_image, "is too big")
      end

      acceptable_types = ["image/jpeg", "image/png"]
      unless acceptable_types.include?(main_image.content_type)
        errors.add(:main_image, "must be a JPEG or PNG")
      end
    end

    task_images.each do |main_image|
      unless main_image.byte_size <= 1.megabyte
        errors.add(main_image, "is too big")
      end

      acceptable_types = ["image/jpeg", "image/png"]
      unless acceptable_types.include?(main_image.content_type)
        errors.add(:main_image, "must be a JPEG or PNG")
      end
    end


  end

  #def acceptable_file
  #application/pdf

end
