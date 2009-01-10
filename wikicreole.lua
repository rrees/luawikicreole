
WikiCreole ={}

	function WikiCreole:toHtml(creole)
 		-- Converts creole to HTML
		result = WikiCreole:convertItalics(creole)
		result =  WikiCreole.convertBold(result)
		return result
	end
	
	function WikiCreole:convertBold(creole)
		return string.gsub(result, "%*%*(%a+)%*%*", function(content)
			return string.format("<b>%s</b>", content)
			end
		)
	end
	
	function WikiCreole:convertItalics(creole)
		return string.gsub(creole, "//(%a+)//", function(content)
				return string.format("<i>%s</i>", content)
			end
		)
	end
