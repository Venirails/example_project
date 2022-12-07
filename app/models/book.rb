class Book < ApplicationRecord
  
    self.per_page = 3
    validates :name,:author, presence: true
    validates :name, length: { minimum: 2,message: "should have more than 2 chars" }
    validates :name, uniqueness: true
    validates :price, numericality: true

    before_save :merge_names
    after_destroy :update_log

    def merge_names
      self.name = self.name + " By " + self.author
    end

    def update_log
      logger.info "================Alas!  a book has been deleted with name #{self.name}============="
    end

end
