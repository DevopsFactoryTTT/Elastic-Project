andrewrothstein.logstash
=============================
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-logstash.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-logstash)

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
