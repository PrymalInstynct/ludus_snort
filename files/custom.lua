--These configuration lines will perform the following tasks:
--enables the built-in preproc rules, and snort.rules file
--enables hyperscan as the search engine for pattern matching
--enables the IP reputation blocklist
--enables JSON alerting for snort alerts
--enables appid, the appid listener, and logging appid events.
ips =
{
    enable_builtin_rules = true,

    include = "/usr/local/etc/rules/snort.rules",
    variables = default_variables
}

search_engine = { search_method = "hyperscan" }
detection =
{
    hyperscan_literals = true,
    pcre_to_regex = true
}
reputation =
{
    blocklist = '/usr/local/etc/lists/default.blocklist',
}
alert_json =
{
    file = true,
    limit = 1000,
    fields = 'seconds action class b64_data dir dst_addr dst_ap dst_port eth_dst eth_len \
    eth_src eth_type gid icmp_code icmp_id icmp_seq icmp_type iface ip_id ip_len msg mpls \
    pkt_gen pkt_len pkt_num priority proto rev rule service sid src_addr src_ap src_port \
    target tcp_ack tcp_flags tcp_len tcp_seq tcp_win tos ttl udp_len vlan timestamp',
}
appid =
{
    app_detector_dir = '/usr/local/lib',
}
appid_listener =
{
    json_logging = true,
    file = "/var/log/snort/appid-output.log",
}