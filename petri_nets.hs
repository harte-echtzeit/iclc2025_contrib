-- some tests to work with petri nets

-- old
-- place_smpl num max_num = if num == max_num then True else False
-- and_trans input = if input == True then print "some action" else print "was false"
 
place in_num curr_num max_num
  | in_num + curr_num <= 0 = False
  | in_num + curr_num > max_num = False
  | otherwise = True

-- maybe leave out
trans_num in_num in_state = if in_state then True else False  

-- maybe use and perform change of curr_nums in places
trans in_state = if in_state then 1 else 0

-- example of an resulting place, parametrized (dummy wrapper)
outP b = place (trans_num (place b b 3)) b 4
