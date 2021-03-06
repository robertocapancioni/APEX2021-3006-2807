create or replace view eu20_teams_vw as
select
TEAMCODE	,
BIGLOGOURL	,
TEAMNAME	,
MEDIUMLOGOURL	,
VALUE0	Partite_giocate,
VALUE1	Vinte,
VALUE2	Pareggiate,
VALUE3	Perse,
VALUE4	Attacchi,
VALUE5	Assist,
VALUE6	Corner_battuti,
VALUE7	Fuorigioco,
VALUE8	Tiri_totali,
VALUE9	Nello_specchio,
VALUE10	Fuori,
VALUE11	Legni,
VALUE12	Traversa,
VALUE13	Palo,
VALUE14	Respinti,
VALUE15	Parate,
VALUE16	Gol_subiti,
VALUE17	Autogol,
VALUE18	Rigori_parati,
VALUE19	Gol_Fatti
from eu20_teams;

create or replace view eu20_players_vw as
select 
PLAYERID ID,
--BIGLOGOURL,
TEAMCOUNTRYNAME NAZIONE,
MEDIUMLOGOURL IMG_SQUADRA,
AGE ETA,
HEIGHT ALTEZZA,
WEIGHT PESO,
IMAGEURL IMG_GIOCATORE,
BIRTHDATE DATA_NASCITA,
NAME NOME_COMPLETO,
LASTNAME COGNOME,
FIRSTNAME NOME,
--SHORTNAME NOME_CORTO,
--COUNTRY NAZIONE_GIOCATORE,
FIELDPOSITION RUOLO,
VALUE0 MINUTI_GIOCATI,
VALUE1 PARTITE_GIOCATE,
VALUE2 GOL,
VALUE3 ASSIST,
VALUE4 VELOCITA_MASSIMA,
VALUE5 DISTANZA_COPERTA
 from eu20_players;

