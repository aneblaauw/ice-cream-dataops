select 
  external_id as externalId,
  name,
  description,
  if(
  	parent_external_id  == ''
  	or parent_external_id == null,
  	null,
    node_reference('icapi_dm_space', parent_external_id)
  ) as parent
  from `ice-cream-factory-db`.`assets`
