-- 대장균 개체의 크기가 100 이하라면 'LOW', 100 초과 1000 이하라면 'MEDIUM', 1000 초과라면 'HIGH'
-- 대장균 개체의 ID(ID) 와 분류(SIZE)를 출력하는 SQL 문을 작성
-- 결과는 개체의 ID 에 대해 오름차순 정렬

SELECT id, CASE
               WHEN size_of_colony > 1000 THEN 'HIGH'
               WHEN size_of_colony > 100 THEN 'MEDIUM'
               ELSE 'LOW'
           END AS size
FROM ecoli_data
ORDER BY id;