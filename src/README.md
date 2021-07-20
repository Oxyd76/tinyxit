# Source tree description

Source tree of src/* mapped as is on typical unix FS.



 Path | Description
  --- | --- 
 `etc/tinyproxy/` | `tinyproxy.static.config` — static configuration part of `tinyproxy`
 `etc/systemd/system/` | `z-i-prepare.service` — unit for cloning «[zapret.info](https://github.com/zapret-info/z-i.git/)» repo for first time; `tinyproxy-cfg-generator.service` — unit for generating full config for `tinyproxy` in runtime on the fly; `z-i-update-daily.timer` / `z-i-update-daily.service` — daily updater of «zapret.info» [repo](https://github.com/zapret-info/z-i.git/)
 `etc/systemd/system/tinyproxy.service.d/` | `override.conf` —  TinyXit's configuration of `tinyproxy`
 `usr/local/bin/` | `tinyproxy-cfg-gen.sh` — main tinyproxy config generator
 `usr/lib/systemd/system/` | `tinyproxy.service` — Vendor's part (from Manjaro linux) `tinyproxy`'s systemd unit.
