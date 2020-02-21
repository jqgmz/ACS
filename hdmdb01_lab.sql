select device.serialnumber, devicetype.device_type_name, device.domainid from device inner join devicetype on device.devicetype_id = devicetype.id where device.domainid is null and device.deleted = '0' and device.activated = '1';
select id, domain_name from domain where deleted = '0';
select device.serialnumber, devicetype.device_type_name, domain.name from device 
    inner join devicetype on device.devicetype_id = devicetype.id 
    inner join domain on device.domainid = domain.id 
    where device.domainid is null and device.deleted = '0' and device.activated = '1';
