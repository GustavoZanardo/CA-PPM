Query que mostra os usuário ativos no sistema:

select * from niku.CMN_SEC_USERS
where USER_STATUS_ID = 200
order by USER_STATUS_ID

USER_STATUS_ID
Legenda: 200 = Ativo
		 201 = Inativo
		 202 = Bloquear