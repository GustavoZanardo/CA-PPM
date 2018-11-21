SELECT @SELECT:RESOURCES.ID:ID@,
                @SELECT:RESOURCES.LAST_NAME:LAST_NAME@,
                @SELECT:RESOURCES.FIRST_NAME:FIRST_NAME@,
                @SELECT:(RESOURCES.FIRST_NAME +' '+ RESOURCES.LAST_NAME):FULL_NAME@,
                @SELECT:RESOURCES.UNIQUE_NAME:UNIQUE_NAME@,
                @SELECT:RESOURCES.UNIQUE_NAME:UNIQUE_CODE@
                FROM SRM_RESOURCES RESOURCES
                INNER JOIN CMN_SEC_USERS c
                ON RESOURCES.user_id=c.id    
INNER JOIN cmn_sec_user_groups c2
ON c.id=c2.user_id  
INNER JOIN cmn_sec_groups c3
ON c3.id=c2.group_id         
WHERE
                                @FILTER@   AND c3.group_code='hm_grp_diretoria'            AND RESOURCES.PERSON_TYPE != 0                             
                @BROWSE-ONLY:
               AND     RESOURCES.IS_ACTIVE = 1
               :BROWSE-ONLY@