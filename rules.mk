# Written by WATO
# encoding: utf-8


extra_service_conf.setdefault('_ec_sl', [])

extra_service_conf['_ec_sl'] = [
  ( 10, ['foo-printer', ], ALL_HOSTS, ['Check_MK$'] ),
  ( 10, ['foo-basic', ], ALL_HOSTS, ALL_SERVICES ),
  ( 20, ['foo-critical', ], ALL_HOSTS, ALL_SERVICES ),
  ( 30, ['foo-critical-24x7', ], ALL_HOSTS, ALL_SERVICES ),
] + extra_service_conf['_ec_sl']


checkgroup_parameters.setdefault('printer_supply', [])

checkgroup_parameters['printer_supply'] = [
  ( (20.0, 10.0, False), [], ['color14.mit.edu'], ALL_SERVICES ),
] + checkgroup_parameters['printer_supply']


extra_host_conf.setdefault('check_interval', [])

extra_host_conf['check_interval'] = [
  ( 5, ['foo-basic', ], ALL_HOSTS ),
  ( 5, ['foo-critical', ], ALL_HOSTS ),
  ( 5, ['foo-critical-24x7', ], ALL_HOSTS ),
] + extra_host_conf['check_interval']


host_contactgroups = [
  ( 'foo-admins', ['foo-basic', ], ALL_HOSTS ),
  ( 'foo-admins', ['foo-critical', ], ALL_HOSTS ),
  ( 'foo-admins', ['foo-critical-24x7', ], ALL_HOSTS ),
  ( 'foo-pager', ['foo-critical', ], ALL_HOSTS ),
  ( 'foo-pager', ['foo-critical-24x7', ], ALL_HOSTS ),
] + host_contactgroups


extra_service_conf.setdefault('check_interval', [])

extra_service_conf['check_interval'] = [
  ( 1440, [], ALL_HOSTS, ['Check_MK HW/SW Inventory$'], {'comment': u'Restrict HW/SW-Inventory to once a day'} ),
  ( 5, ['foo-basic', ], ALL_HOSTS, ALL_SERVICES ),
  ( 5, ['foo-critical', ], ALL_HOSTS, ALL_SERVICES ),
  ( 5, ['foo-critical-24x7', ], ALL_HOSTS, ALL_SERVICES ),
] + extra_service_conf['check_interval']


extra_host_conf.setdefault('notification_interval', [])

extra_host_conf['notification_interval'] = [
  ( 60, ['foo-basic', ], ALL_HOSTS ),
  ( 60, ['foo-critical', ], ALL_HOSTS ),
  ( 60, ['foo-critical-24x7', ], ALL_HOSTS ),
] + extra_host_conf['notification_interval']


static_checks.setdefault('cpu_load', [])

static_checks['cpu_load'] = [
  ( ('hpux_cpu', None, (0.01, 0.02)), ['cmk-agent', 'critical', ], ALL_HOSTS ),
] + static_checks['cpu_load']


extra_host_conf.setdefault('max_check_attempts', [])

extra_host_conf['max_check_attempts'] = [
  ( 3, [], ALL_HOSTS ),
] + extra_host_conf['max_check_attempts']


extra_service_conf.setdefault('notification_period', [])

extra_service_conf['notification_period'] = [
  ( 'allday', ['foo-basic', ], ALL_HOSTS, ALL_SERVICES ),
  ( 'allday', ['foo-critical', ], ALL_HOSTS, ALL_SERVICES ),
  ( 'allday', [], ['foo-critical-24x7'], ALL_SERVICES ),
] + extra_service_conf['notification_period']


active_checks.setdefault('ssh', [])

active_checks['ssh'] = [
  ( {}, ['tcp', ], ALL_HOSTS ),
] + active_checks['ssh']


extra_service_conf.setdefault('notification_interval', [])

extra_service_conf['notification_interval'] = [
  ( 60, ['foo-basic', ], ALL_HOSTS, ALL_SERVICES ),
  ( 60, ['foo-critical', ], ALL_HOSTS, ALL_SERVICES ),
  ( 60, ['foo-critical-24x7', ], ALL_HOSTS, ALL_SERVICES ),
] + extra_service_conf['notification_interval']


ping_levels = [
  ( {'loss': (80.0, 100.0), 'packets': 6, 'timeout': 20, 'rta': (1500.0, 3000.0)}, ['wan', ], ALL_HOSTS, {'comment': u'Allow longer round trip times when pinging WAN hosts'} ),
] + ping_levels


extra_service_conf.setdefault('retry_interval', [])

extra_service_conf['retry_interval'] = [
  ( 3, [], ALL_HOSTS, ALL_SERVICES ),
] + extra_service_conf['retry_interval']


service_contactgroups = [
  ( 'foo-admins', ['foo-basic', ], ALL_HOSTS, ALL_SERVICES ),
  ( 'foo-admins', ['foo-critical', ], ALL_HOSTS, ALL_SERVICES ),
  ( 'foo-admins', ['foo-critical-24x7', ], ALL_HOSTS, ALL_SERVICES ),
  ( 'foo-pager', ['foo-critical', ], ALL_HOSTS, ALL_SERVICES ),
  ( 'foo-pager', ['foo-critical-24x7', ], ALL_HOSTS, ALL_SERVICES ),
] + service_contactgroups


service_groups = [
  ( 'foo-critical-24x7', ['foo-critical-24x7', ], ALL_HOSTS, ALL_SERVICES ),
  ( 'foo-basic', ['foo-basic', ], ALL_HOSTS, ALL_SERVICES ),
  ( 'foo-critical', ['foo-critical', ], ALL_HOSTS, ALL_SERVICES ),
] + service_groups


bulkwalk_hosts = [
  ( ['snmp', '!snmp-v1', ], ALL_HOSTS, {'comment': u'Hosts with the tag "snmp-v1" must not use bulkwalk'} ),
] + bulkwalk_hosts

snmp_timing = [
 ( {'retries': 2, 'timeout':30}, ["snmp"], ALL_HOSTS ),
]

extra_service_conf.setdefault('max_check_attempts', [])

extra_service_conf['max_check_attempts'] = [
  ( 3, [], ALL_HOSTS, ALL_SERVICES ),
] + extra_service_conf['max_check_attempts']


if only_hosts == None:
    only_hosts = []

only_hosts = [
  ( ['!offline', ], ALL_HOSTS, {'comment': u'Do not monitor hosts with the tag "offline"'} ),
] + only_hosts


host_groups = [
  ( 'foo-basic', ['foo-basic', ], ALL_HOSTS ),
  ( 'foo-critical', ['foo-critical', ], ALL_HOSTS ),
  ( 'foo-critical-24x7', ['foo-critical-24x7', ], ALL_HOSTS ),
] + host_groups


extra_host_conf.setdefault('notification_period', [])

extra_host_conf['notification_period'] = [
  ( 'allday', ['foo-basic', ], ALL_HOSTS ),
  ( 'allday', ['foo-critical', ], ALL_HOSTS ),
  ( 'allday', ['foo-critical-24x7', ], ALL_HOSTS ),
] + extra_host_conf['notification_period']


extra_host_conf.setdefault('retry_interval', [])

extra_host_conf['retry_interval'] = [
  ( 1, [], ALL_HOSTS ),
] + extra_host_conf['retry_interval']

