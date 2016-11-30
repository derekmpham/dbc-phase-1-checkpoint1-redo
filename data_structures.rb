# write method for #search_in_array
def search_in_array(array, i)
	location = array.index(i)
	p location
end


# write method for #numbers_in_hash
def numbers_in_hash(outerkey, innerkey)
	numbers = outerkey[innerkey] #-->we are accessing the inside hash with 'innerkey'
	p numbers
end