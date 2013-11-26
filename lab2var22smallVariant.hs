import Lab2
predm = [french,programming,discrete_mathematics] -- Наверное, можно не считать это за строчку - можно внести в функцию, но вдруг еще предметы появятся?
philosophy = concat (map (\currPr ->(filter (\st -> (not (maximum (map (\othSt -> elem st othSt) (filter (\othPr -> not (currPr==othPr)) predm))))) currPr)) predm)
main = do
mapM_ putStrLn $ "Список студентов, загнанных на курс философии:":(map (\st -> (fst st) ++ " " ++ (snd st))  philosophy)