userinput = []
people = []
spouses = []
netpeople = []
gift = []
puts "Who is the first participant?"
input = gets.chomp
if input != ""
gift = gift.push(input)
userinput = userinput.push(input)
people = people.push(input)
netpeople = netpeople.push(input)
puts "What gifts would they like? Hit enter when done."
gifttext = gets.chomp
gift = gift.push(gifttext)
puts "Who is your spouse?"
spouse = gets.chomp
	if spouse != ""
	gift = gift.push(spouse)
	netpeople = netpeople.push(spouse)
	people = people.push(spouse)
	spouses = spouses.push(spouse)
	puts "What gifts would they like? Hit enter when finished."
	gifttext = gets.chomp
	gift = gift.push(gifttext)
	else
	end
else
end
puts "Any more participants?"
morepart = gets.chomp
until morepart.include? 'N' do
puts "Who is the next participant?"
input = gets.chomp
if input != ""
gift =gift.push(input)
userinput = userinput.push(input)
people = people.push(input)
netpeople = netpeople.push(input)
puts "What gifts would they like? Hit enter when finished."
gifttext = gets.chomp
gift = gift.push(gifttext)
puts "Who is their spouse?"
spouse = gets.chomp
	if spouse != ""
	gift.push(spouse)
	netpeople = netpeople.push(spouse)
	people = people.push(spouse)
	puts "What gifts would they like? Hit enter when finished."
	gifttext = gets.chomp
	gift = gift.push(gifttext)
	else
	end
else
end
puts "Any more participants?"
morepart = gets.chomp
end
marriages = netpeople.each_slice(2).to_h
marriages = marriages.delete_if { |key, value| value.to_s.strip == '' }
gifthash = gift.each_slice(2).to_h
people = people.shuffle!
originalshuffle = people
dataone = []
datatwo = []
backup = people
peoplelength = people.length
peopleuniqlength = people.uniq.length
i = peoplelength
u = peopleuniqlength
hash = Hash.new
myarray = []
if i % 2 == 0
	until i == 0 do
		if people.uniq.length == people.length

		itemone = people[0]
		dataone = dataone.push(itemone)
		hash[itemone] = nil
		itemtwo = people[1]
		datatwo = datatwo.push(itemtwo)
		itemonearray = []
		itemtwoarray = []
		itemonearray = itemonearray.push(itemone)
		itemtwoarray = itemtwoarray.push(itemtwo)
		hash[itemone] = itemtwo
			if marriages[itemone] != itemtwo && marriages[itemtwo] != itemone 
				if itemonearray[-1] != marriages[itemtwo] && itemtwoarray[-1] != marriages[itemone]
				myvar = puts "#{itemone} is a match for #{itemtwo}. #{itemtwo} would like #{gifthash[itemtwo]}."
				myarray = myarray.push(myvar)
				people = people.drop(2)
				i -= 2
				else
				people = backup
				end
			else
				people = people.shuffle
			end
		else
			puts "Duplicate name. Please try again."
			break
		end
	end
else
	puts "Please put an even number of names."
end
puts myarray
backupdataone = dataone
backupdatatwo = datatwo
dataonelength = dataone.length
datatwolength = datatwo.length
x = dataonelength + datatwolength
puts marriages
mysecondarray = []
until x == 0 do
dataone = dataone.shuffle
datatwo = datatwo.shuffle
itemone = datatwo[0]
itemtwo = dataone[0]
itemonearray = []
itemtwoarray = []
itemonearray = itemonearray.push(itemone)
itemtwoarray = itemtwoarray.push(itemtwo)
	if itemone != itemtwo && hash[itemone] != hash.values_at(itemone) && marriages[itemone] != itemtwo && marriages[itemtwo] != itemone && itemtwoarray[-1] != marriages[itemone] && itemonearray[-1] != marriages[itemtwo]

		myvar = "#{itemone} is a match for #{itemtwo}. #{itemtwo} would like #{gifthash[itemtwo]}."
		mysecondarray = mysecondarray.push(myvar)
		datatwo = datatwo.drop(1)
		x -= 1
		dataone = dataone.drop(1)
		x -= 1
	else
			dataone = backupdataone
			datatwo = backupdatatwo
			x = dataonelength + datatwolength
	end
end
puts mysecondarray
