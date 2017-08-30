checks = [
 ( ["eofe7.cm.cluster","eosloan.cm.cluster","eofe4.cm.cluster","eofe5.cm.cluster"], "logins", None, (150, 200) ),
( ALL_HOSTS, "cpu.threads" , None, (5000,7000) ),
# ( "testhost", "logins", None, (150, 200) ),
]

tcp_connect_timeout = 120.0

ignored_services += [

# These are autofs mounts and we shouldn't monitor them
# ( ALL_HOSTS, [ 'NFS mount /run/*' ] ),
# use name here
# ( [ 'testhost','node017' ], ['Postfix Queue' ]),
( ALL_HOSTS, ['Postfix Queue' ]),
( ["ping-only"], ALL_HOSTS, "Number of Threads" ),
( ["ping-only"], ALL_HOSTS, "Check_MK"),
#( ["eofe-netapp-internal.cm.cluster"], "SSH"),
]


#ignored_checks += [
#(["ping-only"], ALL_HOSTS, "cpu.threads") 
#]

inventory_df_exclude_fs += [

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

]

ignored_checktypes = [ "nfsmounts", "NFS mount", ]



# List of mountpoints to skipt at inventory
# inventory_df_exclude_mountpoints += [ '/dev', '/pts', '/sys' ]




