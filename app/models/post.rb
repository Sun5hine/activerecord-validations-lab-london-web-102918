class Post < ActiveRecord::Base

  validates :title, presence: true
  validates :summary,  :length => { :maximum=> 250 }
  validates :content,  :length => { :minimum=> 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validate :clickbait


  private

  def clickbait
    if title == "Won't Believe"
      errors.add(:title, "cannot be clickbaity!")
    elsif title == "Secret"
      errors.add(:title, "cannot be clickbaity!")
    elsif title == "Top [number]"
        errors.add(:title, "cannot be clickbaity!")
    elsif title == "True Facts"
      errors.add(:title, "cannot be clickbaity!")
    elsif title == "Guess"
      errors.add(:title, "cannot be clickbaity!")
    end
  end
end
