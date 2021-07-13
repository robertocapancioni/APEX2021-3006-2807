create or replace view d30_prodotto_vw as
select p.id,
       p.prodotto,
       p.prezzo_acquisto,
       p.prezzo_vendita,
       tp.tipo_prodotto,
       tp.gruppo 
  from d30_prodotto p
  join d30_tipo_prodotto tp 
    on p.tipo_prodotto_id = tp.id
    ;