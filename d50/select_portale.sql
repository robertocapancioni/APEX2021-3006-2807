select distinct application_id CARD_INITIALS,
                application_name card_title,
                'f?p=' || application_id || ':1:'||v('APP_SESSION')CARD_LINK,
                'fa-apex'card_icon,
                null card_text,
                null card_subtext
  from apex_appl_acl_user_roles
 where user_name=v('APP_USER');

-- se si definisce una stringa di sostituzione e la si chiama APP_ICON_CLASS con la classe dell'icona
select distinct u.application_id CARD_INITIALS,
                u.application_name card_title,
                'f?p=' || u.application_id || ':1:'||v('APP_SESSION')CARD_LINK,
                nvl(SUBSTITUTION_VALUE,'fa-apex')card_icon,
                null card_text,
                null card_subtext
  from apex_appl_acl_user_roles u
  left join APEX_APPLICATION_SUBSTITUTIONS s 
    on u.workspace = s.workspace
   and  u.application_id = s.application_id
   and s.SUBSTITUTION_STRING = 'APP_ICON_CLASS'
 where user_name=v('APP_USER');
 
 -- se si aggiunge la condivisione di sessione co ni coockies

 select distinct u.application_id card_initials,
                u.application_name card_title,
                'f?p=' || u.application_id || ':1:'||v('APP_SESSION')card_link,
                nvl(substitution_value,'fa-apex')card_icon,
                null card_text,
                null card_subtext 
  from apex_appl_acl_user_roles u
  left join apex_application_substitutions s 
         on u.workspace = s.workspace
        and u.application_id = s.application_id
        and s.substitution_string = 'APP_ICON_CLASS'
  join      apex_application_auth a
         on u.workspace = a.workspace
        and u.application_id = a.application_id
        and is_current_authentication='Y'
        and cookie_name ='P00'
 where user_name=v('APP_USER');
