class MyValidator < ActiveModel::Validator
  def validate(post)
    binding.pry
    clickbait = ["Won't Believe", "Secret", "Top", "Guess"]
    if clickbait.none? { |phrase| post.title.include?(phrase) }
      record.errors[:title] << "Need clickbait"
    end
  end
end
