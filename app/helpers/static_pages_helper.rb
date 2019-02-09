module StaticPagesHelper
  def populars
    ActsAsTaggableOn::Tag.most_used(10)
  end
end
