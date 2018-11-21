/* without automatic rights */

SELECT r.right_id
, g.group_name right_name
, g.group_code right_code
, r.permission_code
, g.description right_description
, g.lic_right_type
, g.is_automatic
, g.language_code
FROM cmn_sec_groups_v g
, cmn_sec_right r
WHERE
g.ID = r.right_id
AND (g.is_automatic != 1 OR g.is_automatic IS NULL)
AND g.right_type IS NOT NULL
AND g.is_active = 1
AND g.language_code = 'en'
ORDER BY permission_code, right_name