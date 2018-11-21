SELECT   o.Name TABELA , c.Name COLUNA
FROM     sys.columns c 
         JOIN sys.objects o ON o.object_id = c.object_id 
WHERE    o.type = 'U' 
AND c.name like  '%baseline%' --nome do atributo
ORDER BY o.Name, c.Name 