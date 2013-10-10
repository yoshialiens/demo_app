class Project < ActiveRecord::Base

has_attached_file :avatar, {
    :styles => {
      :thumb => ["50x50#", :jpg],
      :medium => ["100x100#", :jpg],
      :large => ["300x300>", :jpg]
    },

    :convert_options => {
      :thumb => "-gravity Center -crop 50x50+0+0",
      :thumb => "-gravity Center -crop 100x100+0+0",
    }
}


end
