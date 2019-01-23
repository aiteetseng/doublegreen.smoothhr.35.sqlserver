
select c.id as grantedcid,
       c.nocode,
       c.linkurl,
       isnull(c.descriptionzhtw,c.description) as description, 
       c.version
  from dgcontent c 
 where c.id in 
      (select a.cid from dgcontentauth a
       where a.ruid not in 
            (select ruid from dgcontentauth 
             where cid='1615E6C2-7803-4F1C-803A-1FC546AE01CB')
         and a.cid in 
            (select id from dgcontent
             where functioncid is null 
               and catid is not null 
               and nocode is not null)) order by c.nocode

