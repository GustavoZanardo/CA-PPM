select 
inv.CODE,
inv.NAME,
ocinv.hm_gerente_demanda, 
usr.USER_NAME

from niku.ODF_CA_INV ocinv
join niku.INV_INVESTMENTS inv ON ocinv.ID = inv.ID
join niku.SRM_RESOURCES r on r.USER_ID = ocinv.hm_gerente_demanda
join niku.CMN_SEC_USERS usr on r.MANAGER_ID = usr.ID

where ocinv.ID = 5232013
