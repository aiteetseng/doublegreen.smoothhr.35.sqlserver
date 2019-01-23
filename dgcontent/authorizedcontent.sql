
select id as authorizedcid,
       nocode,
       linkurl,
       isnull(descriptionzhtw,description) as description, 
       version
from dgcontent
where functioncid is null 
  and catid is not null 
  and nocode is not null
  and browsable = 'Y' order by nocode 

