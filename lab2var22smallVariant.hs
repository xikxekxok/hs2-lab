import Lab2
predm = [french,programming,discrete_mathematics] -- ��������, ����� �� ������� ��� �� ������� - ����� ������ � �������, �� ����� ��� �������� ��������?
philosophy = concat (map (\currPr ->(filter (\st -> (not (maximum (map (\othSt -> elem st othSt) (filter (\othPr -> not (currPr==othPr)) predm))))) currPr)) predm)
main = do
mapM_ putStrLn $ "������ ���������, ��������� �� ���� ���������:":(map (\st -> (fst st) ++ " " ++ (snd st))  philosophy)