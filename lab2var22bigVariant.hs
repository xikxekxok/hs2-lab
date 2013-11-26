import Lab2
predm = [french,programming,discrete_mathematics]
drop' q list = filter (\x -> not (q==x)) list
getFromOne ths other = filter (\z -> ( not (maximum (map (\y -> elem z y) other)))) ths
createNewList oldList = concat (map (\x -> (getFromOne x (drop' x oldList))) predm)
philosophy = createNewList predm
main = do
putStrLn "Список студентов, загнанных на курс философии:"
mapM_ putStrLn $ map (\st -> (fst st) ++ " " ++ (snd st)) philosophy