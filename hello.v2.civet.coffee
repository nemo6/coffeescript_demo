require "C:/Users/nemo6/Dropbox/a.code/javascript/init"

# ?=
# ||=
# &&=
# for own
# ["a".."z"]

( () ->

	console.log "test"
	# Roses are red
	# Violets are blue

	# civet :
	p = "C:/Users/Miguel/Dropbox/E lab2/a.code/civet/hello civet/KPZwOqnuCY9x/KPZwOqnuCY9x.txt"
	|> read
	|> lines
	|> _.curryRight( _.map )( _.parseInt )
	|> print

	console.log "···".brightMagenta

	text = [
	  1
	  2
	  3
	]

	console.log text

	console.log "···".brightMagenta

	COLORS =
	"RED"   : "#ffe0e0"
	"GREEN" : "#e0ffe0"
	"BLUE"  : "#8da8b1"

	countdown = Array(5).fill( COLORS )
	remember  = Array(5).fill( _.range(0,5+1) )

	# String.prototype.glob = require("C:/Users/Miguel/Dropbox/E lab2/a.code/javascript/f_glob_module_exp")

	# print ".".glob("*.coffee").Map _.flow( [base,upper] )

	print countdown.Map "RED","BLUE"
	print remember.Map -1
	print remember.Map 0

	console.log "···".brightMagenta

)/*()*/

( () ->

	name1 = "Charles"
	name2 = "Bob"
	console.log `hello ${ name1 }`
	console.log "hello #{ name2 }"

	eat = (food) => "#{  food }  eaten."
	m = ( eat food for food of [ "toast" , "cheese" , "wine" ] )
	console.log m

)()

( () ->

	reduce = (m,f) => (v) => [f,...m].reduce (o,x) =>
		f[x]=v
		return

	civet_map = (b) => (a) => a.map( b )

	# civet :
	p = "JhNR38wvgVhr.txt"
	|> read
	|> line
	|> &.sort( (a,b) => a.localeCompare( b, undefined, { numeric:true } ) )
	|> civet_map (x) => x+1
	||> reduce ["a","b"] , globalThis

)/*()*/

( () ->

	civet_map = (b) => (a) => a.map( b )

	# civet :
	[ 0..9 ] |> civet_map ( x => x+1 ) |> console.log

	zip = (x,i) => _.zipObject( ["index","value"] , [i,x] )

	# civet :
	[ 0..9 ] |> civet_map zip |> console.log

)/*()*/

( () ->

	# console.log FILE
	# console.log DIR

	Map = require "C:/Users/Miguel/Dropbox/E lab2/a.code/javascript/f_map_civet_module_exp.js"

	zip = (x,i) => _.zipObject( ["index","value"] , [ i+1 , x ] )

	generate_unicode = require "C:/Users/Miguel/Dropbox/E lab2/a.code/javascript/generate_unicode_module_exp"

	generate_unicode(5) |> Map zip |> Map ["index","value"] |> console.log

	# => [ [ 0, 'a' ], [ 1, 'b' ], [ 2, 'c' ], [ 3, 'd' ], [ 4, 'e' ] ]

)/*()*/

( () ->

	# civet :
	civet_map_no_curry = (a,b) => a.map( b )
	array = [1,2,3,4]
	array civet_map_no_curry= &+1
	console.log array

	# civet :
	{ uniq } = _

	# civet :
	# operator uniq

	array = [ "a","b","c","d","e" ]
	array = array.concat( array )
	console.log array
	array uniq=&
	console.log array

	# Pipe assignment:

	data |>= .content # data = data.content

)/*()*/

function generate_unicode( len ){

	let m = []
	for ( let i=97;i<=122;i++ ){
		m.push( String.fromCodePoint(i) )
	}

	let result = []
	for( let i=0;i<len;i++ ){
		result.push( m[i] )
	}

	return result

}

# SCOPE START : is like

( () ->

	array = [
	{ a: 1 , b : 2 }
	{ a: 1 , b : 2 }
	{ a: 1 , b : 2 }
	{ type: 5 , children : 10, lion: 22 }
	{ a: 1 , b : 2 }
	{ horse : 12, lion: 17 }
	]

	console.log "···".brightMagenta

	# ! no space before "is like" and before the last parenthesis
	# ! regex: (\x{20}is like { type , children }\x{20})
	# does not work

	console.log array

	m = array.filter ( is like { horse , lion } )
	console.log m

)/*()*/

# SCOPE END : is like

( () ->

	console.log "···".brightMagenta

	console.log bar( { a: { z:-1 } , b:8 , c:9 } )
	console.log test?
	console.log bar( test? )

)/*()*/

function isEmpty(x)
	# return x === "" || x === null || x === undefined
	if
	  (or)
	    x === ""
	    x === null
	    x === undefined
	# switch x
	# 	when "", null, undefined
	# 		return true

function bar(x)
	if isEmpty(x)
	  return "Empty"
	switch x
	  ""
	    return "nothing"
	  /^\s*|^\t*/
	    return "whitespace"
	  { a : { z:-1 } }
	    return Object.prototype.toString.call(x).brightBlue
	  else
	    return null

# ruby :
# digits = 0..9

# puts digits.include?(5)
# ret = digits.min
# puts "Min value is #{ret}"

# ret = digits.max
# puts "Max value is #{ret}"

# ret = digits.reject {|i| i < 5 }
# puts "Rejected values are #{ret}"
