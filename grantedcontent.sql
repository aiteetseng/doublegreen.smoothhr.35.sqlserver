/* Available content */

select id as authorizedcid 
from dgcontent
where functioncid is null 
  and catid is not null 
  and nocode is not null
  
select a.cid as grantedcid
from dgcontentauth a
where a.ruid not in 
      (select ruid from dgcontentauth 
      where cid='1615E6C2-7803-4F1C-803A-1FC546AE01CB')
  and a.cid in 
      (select id from dgcontent
      where functioncid is null 
      and catid is not null 
      and nocode is not null)
group by a.cid
