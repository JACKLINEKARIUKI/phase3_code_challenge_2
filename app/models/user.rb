class User < ActiveRecord::Base
    
    has_many :reviews
    has_many :products, through: :reviews
    
    def favorite_product
        self.products.max_by do |product|
            product.average_rating
        end
    end

    def remove_reviews(product)
        self.reviews.where(product: product).destroy_all
    end

    
end