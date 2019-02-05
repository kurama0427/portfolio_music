module StaticPagesHelper
  def populars
    ActsAsTaggableOn::Tag.most_used(3)
  end
end
