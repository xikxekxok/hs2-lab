import Lab2
predm = [french,programming,discrete_mathematics]
drop' _ [] = []
drop' q (x:xs)
	| x==q = (drop' q xs)
	| otherwise = x:(drop' q xs)
getFromOne [] _ = []
getFromOne (x:xs) other
	| (maximum (map (\y -> elem x y) other)) = (getFromOne xs other)
	| otherwise = x:(getFromOne xs other)
createNewList [] _ = []
createNewList oldListTemp oldList = (getFromOne (head oldListTemp) (drop' (head oldListTemp) oldList)) ++ (createNewList (tail oldListTemp) oldList)
philosophy = createNewList predm predm
main = do
putStrLn "Список студентов, загнанных на курс философии:"
mapM_ putStrLn $ map (\st -> (fst st) ++ " " ++ (snd st)) philosophy


