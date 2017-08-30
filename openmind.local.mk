active_checks.setdefault('http', [])

active_checks['http'] = [
  ( (u'http-alive', {'uri': '/custom'}), [], ['service001'] ),
] + active_checks['http']


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

ignored_checktypes = [ "nfsmounts", "NFS mount", ]







