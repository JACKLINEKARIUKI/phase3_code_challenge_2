class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product


    def print_review
        puts "Review for #{self.product.name} by #{self.user.name}: #{self.rating} . #{self.comment}"
    end

end