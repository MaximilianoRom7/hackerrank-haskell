CC=ghc

install: angry_professor apple_and_orange beautiful_days_at_the_movies between_two_sets birthday_chocolate bith_cake bon_appetit breaking_records cats_and_mouse circular_array_rotation counting_valleys day_of_the_programmer divisible_sum_pairs drawing_book electronic_shoping first grading_studients kangaroo migratory_birds MinMaxSum MinPlus picking_numbers save_the_prisoner sequence_equation sock_merchant Starcase the_hurdle_race time_conversion utopian_tree viral_advertising

angry_professor: angry_professor.hs
	$(CC) -o bin/angry_professor angry_professor.hs

apple_and_orange: apple_and_orange.hs
	$(CC) -o bin/apple_and_orange apple_and_orange.hs

beautiful_days_at_the_movies: beautiful_days_at_the_movies.hs
	$(CC) -o bin/beautiful_days_at_the_movies beautiful_days_at_the_movies.hs

between_two_sets: between_two_sets.hs
	$(CC) -o bin/between_two_sets between_two_sets.hs

birthday_chocolate: birthday_chocolate.hs
	$(CC) -o bin/birthday_chocolate birthday_chocolate.hs

bith_cake: bith_cake.hs
	$(CC) -o bin/bith_cake bith_cake.hs

bon_appetit: bon_appetit.hs
	$(CC) -o bin/bon_appetit bon_appetit.hs

breaking_records: breaking_records.hs
	$(CC) -o bin/breaking_records breaking_records.hs

cats_and_mouse: cats_and_mouse.hs
	$(CC) -o bin/cats_and_mouse cats_and_mouse.hs

circular_array_rotation: circular_array_rotation.hs
	$(CC) -o bin/circular_array_rotation circular_array_rotation.hs

counting_valleys: counting_valleys.hs
	$(CC) -o bin/counting_valleys counting_valleys.hs

day_of_the_programmer: day_of_the_programmer.hs
	$(CC) -o bin/day_of_the_programmer day_of_the_programmer.hs

divisible_sum_pairs: divisible_sum_pairs.hs
	$(CC) -o bin/divisible_sum_pairs divisible_sum_pairs.hs

drawing_book: drawing_book.hs
	$(CC) -o bin/drawing_book drawing_book.hs

electronic_shoping: electronic_shoping.hs
	$(CC) -o bin/electronic_shoping electronic_shoping.hs

first: first.hs
	$(CC) -o bin/first first.hs

grading_studients: grading_studients.hs
	$(CC) -o bin/grading_studients grading_studients.hs

kangaroo: kangaroo.hs
	$(CC) -o bin/kangaroo kangaroo.hs

migratory_birds: migratory_birds.hs
	$(CC) -o bin/migratory_birds migratory_birds.hs

MinMaxSum: MinMaxSum.hs
	$(CC) -o bin/MinMaxSum MinMaxSum.hs

MinPlus: MinPlus.hs
	$(CC) -o bin/MinPlus MinPlus.hs

picking_numbers: picking_numbers.hs
	$(CC) -o bin/picking_numbers picking_numbers.hs

save_the_prisoner: save_the_prisoner.hs
	$(CC) -o bin/save_the_prisoner save_the_prisoner.hs

sequence_equation: sequence_equation.hs
	$(CC) -o bin/sequence_equation sequence_equation.hs

sock_merchant: sock_merchant.hs
	$(CC) -o bin/sock_merchant sock_merchant.hs

Starcase: Starcase.hs
	$(CC) -o bin/Starcase Starcase.hs

the_hurdle_race: the_hurdle_race.hs
	$(CC) -o bin/the_hurdle_race the_hurdle_race.hs

time_conversion: time_conversion.hs
	$(CC) -o bin/time_conversion time_conversion.hs

utopian_tree: utopian_tree.hs
	$(CC) -o bin/utopian_tree utopian_tree.hs

viral_advertising: viral_advertising.hs
	$(CC) -o bin/viral_advertising viral_advertising.hs

clean:
	rm *.o *.hi
