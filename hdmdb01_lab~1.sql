select device.serialnumber, devicetype.device_type_name, domain.domain_name from device 
    inner join devicetype on device.devicetype_id = devicetype.id 
    inner join domain on device.domainid = domain.id
    where device.activated = '1';
