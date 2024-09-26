import System.Random (randomRIO)

-- some tests to work with petri nets

-- old
-- place_smpl num max_num = if num == max_num then True else False
-- and_trans input = if input == True then print "some action" else print "was false"
 
place in_num curr_num max_num
  | in_num + curr_num <= 0 = False
  | in_num + curr_num > max_num = False
  | otherwise = True

-- maybe use and perform change of curr_nums in places
trans in_state = if in_state then 1 else 0

-- example of an resulting place, parametrized (dummy wrapper)
linP b = place (trans (place b b 1)) b 1


polyP c = (linP c, linP c) 





-- maybe leave out
trans_num in_num in_state = if in_state then True else False  


randomTrigger :: IO (Bool, Bool)
randomTrigger = do
    x <- randomRIO (1 :: Int, 2 :: Int)  -- Specify the type as Int
    return $ if x == 1 then (True, False) else (False, True)
