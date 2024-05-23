# ludus_snort
An Ansible Role that installs Snort IDS on Debian 12 in a Ludus Cyber Range

## Requirements

None

## Role Variables

```yaml
ludus_snort_interface: enp2s0
ludus_oinkcode: xxxxxxxxxxxxxxxxxxxxxxxx
ludus_snort_id: 994
ludus_snort_threads: 2
ludus_snort_home_net: 10.10.1.0/24,10.10.100.0/24,10.10.111.0/24
```

## Dependencies

None.

## Example Playbook

```yaml
- hosts: hosts
  roles:
    - PrymalInstynct.ludus_snort
```

## Example Ludus Range Config

```yaml
ludus:
  - vm_name: "{{ range_id }}-snort"
    hostname: "{{ range_id }}-snort"
    template: debian-12-x64-server-template
    vlan: 20
    ip_last_octet: 2
    ram_gb: 8
    cpus: 4
    linux: true
    roles:
      - PrymalInstynct.ludus_snort
    role_vars:
      ludus_snort_interface: ens19
      ludus_oinkcode: yyyyyyyyyyyyyyyyyyyyyyy
      ludus_snort_id: 994
      ludus_snort_threads: 2
      ludus_snort_home_net: 10.2.10.0/24,10.2.20.0/24
```

## License

GPLv3

## Author Information

This role was created by [PrymalInstynct](https://github.com/PrymalInstynct), for [Ludus](https://ludus.cloud/).

