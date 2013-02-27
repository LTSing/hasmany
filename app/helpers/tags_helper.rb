module TagsHelper
  def tag_name(tags)
    tags.each do |tag|
      tag.name
    end
  end
end
