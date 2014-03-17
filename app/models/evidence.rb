class Evidence < ActiveRecord::Base

	belongs_to :project
	has_many :tag_assignments

	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }


	# :url => "/assets/products/:id/:style/:basename.:extension",
	# :path => ":rails_root/public/assests/products/:id/:style/:basename.:extension"

	validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }


	scope :by_project, ->(project_id) { where("project_id = ?", project_id) }
	scope :by_tag, ->(tag_id) { joins(:tag_assignments).where("tag_id = ?", tag_id) }
end
