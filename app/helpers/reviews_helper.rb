module ReviewsHelper
  def average(restaurant)
    total_rating = 0
    restaurant.reviews.each do |review|
      total_rating += review.rating
    end
    total_rating
    average_rating = (restaurant.reviews.count == 0 ? total_rating : total_rating / restaurant.reviews.count)
  end
end
