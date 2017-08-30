if type(define_hostgroups) != dict:
    define_hostgroups = {}
define_hostgroups.update({'foo-basic': u'foo-basic',
 'foo-critical': u'foo-critical',
 'foo-critical-24x7': u'foo-critical-24x7',
 'testhostgroup': u'testhostgroup',
 'foo-printer': u'foo-printer',
 'snmp': u'snmp'})

if type(define_servicegroups) != dict:
    define_servicegroups = {}
define_servicegroups.update({'foo-basic': u'foo-basic',
 'foo-critical': u'foo-critical',
 'foo-critical-24x7': u'foo-critical-24x7'})

if type(define_contactgroups) != dict:
    define_contactgroups = {}
define_contactgroups.update({'foo-admins': u'foo-admins',
 'foo-pager': u'foo-pager',
 'foo-ts': u'foots',})


