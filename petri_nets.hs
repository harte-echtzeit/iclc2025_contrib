-- some tests to work with petri nets

-- old
-- place_smpl num max_num = if num == max_num then True else False
-- and_trans input = if input == True then print "some action" else print "was false"
 
place num max_num
  | num <= 0 = False
  | num > max_num = False
  | otherwise = True

trans in_num in_state = if in_state then print(in_num - 1) else print(False)  


