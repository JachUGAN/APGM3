class Email
  include ActiveAttr::Model
  include ActiveAttr::Attributes  #I ADDED THIS JUST TO TEST ID IT WAS NEEDED 25NOv2013
  
  attribute :sendername
  attribute :senderemail
  attribute :emailcontent

  validates_presence_of :sendername
  validates_format_of :senderemail, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\Z/i
  validates_length_of :emailcontent, :maximum => 500
end