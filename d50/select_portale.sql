select distinct application_id CARD_INITIALS,
                application_name card_title,
                'f?p=' || application_id || ':1:'||v('APP_SESSION')CARD_LINK,
                'fa-apex'card_icon,
                null card_text,
                null card_subtext
  from apex_appl_acl_user_roles
 where user_name=v('APP_USER');
