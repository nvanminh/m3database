update ContactInfo
set ContactType='ad'
where ContactType is null and ContactInfoId in (Select ContactInfoId From memberContactInfo Where contactType='w')