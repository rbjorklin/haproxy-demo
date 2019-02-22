# vim: set softtabstop=2 tabstop=2 shiftwidth=2 expandtab autoindent syntax=yaml:

base:
  #(salt|node0[12])\.vagrant\.rbjorklin\.com:
  #  - match: pcre
  '*':
    - consul
  node0*.vagrant.rbjorklin.com:
    - elrepo
    - kernel-lt
    - podman
  node0[12].vagrant.rbjorklin.com:
    - nginx
  node0[34].vagrant.rbjorklin.com:
    - consul-template
    - haproxy
