# ludus_snort
An Ansible Role that installs Snort IDS on Debian 12 in a Ludus Cyber Range

## Requirements

None

## Role Variables

```yaml
ludus_snort_interface: enp2s0
ludus_oinkcode: xxxxxxxxxxxxxxxxxxxxxxxx
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
  - vm_name: "{{ range_id }}-debian01"
    hostname: "{{ range_id }}-debian01"
    template: debian-12-x64-server-template
    vlan: 10
    ip_last_octet: 11
    ram_gb: 6
    cpus: 4
    linux: true
    roles:
      - PrymalInstynct.ludus_snort
    role_vars:
      - ludus_snort_interface: ens19
      - ludus_oinkcode: yyyyyyyyyyyyyyyyyyyyyyy
```

## License

GPLv3

## Author Information

This role was created by [PrymalInstynct](https://github.com/PrymalInstynct), for [Ludus](https://ludus.cloud/).

