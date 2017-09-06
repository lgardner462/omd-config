# Written by Multisite UserDB
# encoding: utf-8

contacts.update(
{'eaps-admin': {'alias': u'eaps-admin',
                    'contactgroups': ['eaps-admins'],
                    'disable_notifications': False,
                    'email': 'eaps-noc@techsquare.com',
                    'pager': ''},
 'eaps-pager': {'alias': u'eaps-pager',
                    'contactgroups': ['eaps-pager'],
                    'disable_notifications': False,
                    'email': 'eaps-page@techsquare.com',
                    'pager': ''},
 'eaps-view': {'alias': u'eaps view',
                   'contactgroups': [],
                   'disable_notifications': False,
                   'email': '',
                   'pager': ''},
 'machineuser': {'alias': u'machine',
                 'contactgroups': [],
                 'disable_notifications': False},
 'omdadmin': {'alias': u'omdadmin',
              'contactgroups': [],
              'disable_notifications': False,
              'email': '',
              'pager': ''}}
)
