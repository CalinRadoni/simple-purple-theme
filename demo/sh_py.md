```py
#!/usr/bin/python
# -*- coding: utf-8 -*-

# Copyright: (c) 2021, Calin Radoni (https://github.com/CalinRadoni)
# Based on: https://docs.ansible.com/ansible/latest/dev_guide/developing_modules_general.html
# GNU General Public License v3.0+ (see COPYING or https://www.gnu.org/licenses/gpl-3.0.txt)

from __future__ import (absolute_import, division, print_function)
__metaclass__ = type

from ansible.module_utils.basic import AnsibleModule

def install_extension(module, name):
    rc, cmd_out, cmd_err = module.run_command(['code', '--install-extension', name])
    if rc != 0 :
        print('Error')
        module.fail_json(msg = 'Failed to install extension %s: %s %s' % (name, cmd_out, cmd_err))

    return 'successfully installed' in cmd_out

def run_module():
    module_args = dict(
        name = dict(type = 'str', required = True)
    )

    result = dict(
        changed = False,
        original_message = '',
        message = ''
    )

    module = AnsibleModule(argument_spec = module_args, supports_check_mode = False)
```