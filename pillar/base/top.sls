# vim: set softtabstop=2 tabstop=2 shiftwidth=2 expandtab autoindent syntax=yaml:

base:
  '*':
    - elrepo
  (salt|node0[12])\.vagrant\.rbjorklin\.com:
    - match: pcre
    - consul
  node0[12].vagrant.rbjorklin.com:
    - consul.discover-service
  node0[34].vagrant.rbjorklin.com:
    - consul-template
    - consul-agent
