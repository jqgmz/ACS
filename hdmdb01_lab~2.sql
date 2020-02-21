select device.serialnumber, devicetype.device_type_name, domain.domain_name from device 
    inner join devicetype on device.devicetype_id = devicetype.id    
    inner join domain on device.domainid = domain.id
    where device.activated = '1' and (devicetype.domainid <> device.domainid) ;
    
    SELECT device.serialnumber, devicetype.device_type_name, domain.domain_name
    FROM device
    INNER JOIN devicetype ON device.devicetype_id = devicetype.ID
    INNER JOIN domain ON device.domainid <> domain.ID
WHERE device.activated = '1' ;

SELECT device.serialnumber, devicetype.device_type_name, domain.domain_name
    FROM device
    INNER JOIN devicetype ON device.devicetype_id = devicetype.ID    
    INNER JOIN domain ON device.domainid = domain.ID 
    
WHERE device.activated = '1' and device.domainid = devicetype.domainid;
