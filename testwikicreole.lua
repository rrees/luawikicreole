require ('luaunit')
require ('wikicreole')

TestWikiCreole = {} --class

	function TestWikiCreole:testShouldConvertDoubleAsterisksToBold()
		creole = "**bold**"
		result = WikiCreole:toHtml(creole)
		assertEquals(result, '<b>bold</b>')
	end
	
	function TestWikiCreole:testShouldConvertDoubleForwardSlashesToItalics()
		creole = "//italics//"
		assertEquals(WikiCreole:toHtml(creole), '<i>italics</i>')
	end

LuaUnit:run()