--Objects in a project
SELECT A.PROJECTNAME, A.OBJECTTYPE, B.PTOBJECTTYPETEXT, A.OBJECTVALUE1 || ' ' || A.OBJECTVALUE2 ||  ' ' || A.OBJECTVALUE3 || ' ' ||  A.OBJECTVALUE4 AS OBJECTVALUE
FROM PSPROJECTITEM A LEFT OUTER JOIN PS_PTOBJECTTYPES B  ON A.OBJECTTYPE = B.OBJECTTYPE
WHERE A.PROJECTNAME = 'ASU_AD0148'
ORDER BY 1, 3;
