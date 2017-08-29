
host_groups = [
  ( 'tcp', ['tcp'], ALL_HOSTS ),   
  ( 'snmp', ['snmp'], ALL_HOSTS ), 
] + host_groups

inventory_df_exclude_mountpoints += [ '/data1', '/scratch1', '/archive1', '/media', '/mnt' ]
