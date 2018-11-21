For example, a user with only view rights (and therefore classified as a Viewer) is assigned as Project Manager to a project. They will be granted project edit rights automatically based on the assignment and will be re-classified as a Full User. To manage a project, a user must be a Full User and have edit rights.

The following query identifies all resources that have automatic security access rights:

SELECT u.user_name, u.last_name, u.first_name, lu.user_id, g.group_name Access_Right, g.LIC_RIGHT_TYPE FROM
 cmn_lic_users_v lu,
 cmn_sec_users u,
 cmn_sec_groups_v g
 WHERE
 u.id = lu.user_id AND
 u.user_status_id = 200 AND
 lu.right_id = g.ID AND
 g.language_code = 'en' AND
 g.group_name like '%Auto%' AND
 --add right types to exclude
 g.LIC_RIGHT_TYPE NOT in ('viewer')
 ORDER BY u.user_name
 