
WikiCreole ={}

	function WikiCreole:toHtml(creole)
 		-- Converts creole to HTML
		return string.gsub(creole, "**(%a+)**", function(content)
			return string.format("<b>%s</b>", content)
			end
		)
	end
