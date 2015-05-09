## Howto build

```bash
# bisher nehmen wir den Branch master:
git clone https://github.com/freifunk-gluon/gluon.git
cd gluon
git clone https://github.com/c3d2/gluon-site.git site
cat >> modules <<'EOF'
GLUON_FEEDS='openwrt gluon routing luci ddmesh'

PACKAGES_DDMESH_REPO=git://github.com/c3d2/gluon-packages.git
PACKAGES_DDMESH_COMMIT=72eb0ce27a8cf9f2fc5333ae2f3872a67db7418c
EOF
# Bauen:
make update
make GLUON_TARGET=x86-generic
```

## Howto test with qemu

```bash
gzip -cd < images/factory/gluon-...-x86-generic.img.gz > /tmp/img
qemu-system-i386 --enable-kvm -drive file=/tmp/img,format=raw -net tap -net nic -serial mon:stdio -nographic
```

[Mehr Doku](http://gluon.readthedocs.org/en/latest/user/getting_started.html#building-the-images)

## TODO

* Register as cronjob
* Setup bmxd
* backbone
* Internet over backbone
