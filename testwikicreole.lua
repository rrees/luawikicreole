require ('luaunit')
require ('wikicreole')

TestWikiCreole = {} --class

	function TestWikiCreole:testShouldConvertDoubleAsterisksToBold()
		creole = "**bold**"
		result = WikiCreole:toHtml(creole)
		assertEquals(result, '<b>bold</b>')
	end

LuaUnit:run()