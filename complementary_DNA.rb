# Deoxyribonucleic acid (DNA) is a chemicalfound in the nucleus of cells
# and carrues the "instructions" for the development and functioning of living 
# organisms.
# In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G".
# You have function with one side of DNA; you need to get the other
# complementary side. DNA stand is never empty or there is no DNA at all.

# DNA_strand('ATTGC') => "TAACG"
# DNA_strand('GTAT') => "CATA"

def DNA_strand(dna)
  arr = %w(A C G T)
  hash = Hash[arr.zip(arr.reverse)]
  dna.chars.map{ |char| char = hash.fetch(char) if hash.include? char }.join
end

p DNA_strand('AAAA')