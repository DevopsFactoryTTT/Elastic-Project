andrewrothstein.logstash
=============================
![Build Status](https://github.com/andrewrothstein/ansible-logstash/actions/workflows/build.yml/badge.svg)

Installs [Logstash](https://www.elastic.co/products/logstash)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.logstash
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
