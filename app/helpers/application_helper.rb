module ApplicationHelper
	def markdown(text)
  	markdown_render = Redcarpet::Render::HTML.new(:hard_wrap => true, :no_styles => true)
  	markdown = Redcarpet::Markdown.new(markdown_render, :autolink => true, :no_intro_emphasis => true)
  	markdown.render(text.to_s)
	end

	def syntax_highlighter(html)
  	doc = Nokogiri::HTML(html)
  	doc.search("//pre[@lang]").each do |pre|
    	pre.replace Albino.colorize(pre.text.rstrip, pre[:lang])
  	end
  	doc.to_s
	end
end
