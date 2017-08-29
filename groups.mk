if type(define_hostgroups) != dict:
    define_hostgroups = {}
define_hostgroups.update({'eaps-basic': u'eaps-basic',
 'eaps-critical': u'eaps-critical',
 'eaps-critical-24x7': u'eaps-critical-24x7',
 'testhostgroup': u'testhostgroup',
 'tcp': u'tcp',
 'snmp': u'snmp'})

if type(define_servicegroups) != dict:
    define_servicegroups = {}
define_servicegroups.update({'eaps-basic': u'eaps-basic',
 'eaps-critical': u'eaps-critical',
 'eaps-critical-24x7': u'eaps-critical-24x7'})

if type(define_contactgroups) != dict:
    define_contactgroups = {}
define_contactgroups.update({'eaps-admins': u'eaps-admins',
 'eaps-pager': u'eaps-pager',
 'eaps-ts': u'eapsts',})


