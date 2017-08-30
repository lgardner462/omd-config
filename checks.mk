checks = [
 ( "openmind7", "logins", None, (150, 200) ),
 
# ( "openmind7", "cpu.threads", None, (5000, 7000) ),
( ALL_HOSTS, "cpu.threads" , None, (5000,7000) ),
]

ignored_services += [

# These are autofs mounts and we shouldn't monitor them
# ( ALL_HOSTS, [ 'NFS mount /run/*' ] ),
( ALL_HOSTS, [ 'NFS mount /mindhive/*' ] ),
( ALL_HOSTS, [ 'NFS mount /srv/*' ] ),
( ALL_HOSTS, [ 'NFS mount /gablab/*' ] ),
( ALL_HOSTS, [ 'NFS mount /cbcl/*' ] ),
( ALL_HOSTS, [ 'NFS mount /net/*' ] ),
# use name here
# ( [ 'openmind7','node017' ], ['Postfix Queue' ]),
( ALL_HOSTS, ['Postfix Queue' ]),
( ["ping-only"], ALL_HOSTS, "Number of Threads" ),
( ["ping-only"], ALL_HOSTS, "SSH" ),
( ["ping-only"], ALL_HOSTS, "Check_MK Discovery"),
]


#inventory_df_exclude_fs += [

'autofs',
'binfmt_misc',
'cgroup',
'cifs',
'configfs',
'debugfs',
'devpts',
'devtmpfs',
'fuse.gvfsd-fuse',
'fuse.sshfs',
'fusectl',
'hugetlbfs',
'iso9660',
'mqueue',
'nfs',
'nfsd',
'proc',
'pstore',
'rpc_pipefs',
'securityfs',
'smbfs',
'sysfs',
'tmpfs',

#]

ignored_checktypes = [ "nfsmounts", "NFS mount", ]



# List of mountpoints to skipt at inventory
# inventory_df_exclude_mountpoints += [ '/dev', '/pts', '/sys' ]



