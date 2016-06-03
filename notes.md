# Differences between machines

## ansible control user name

On production control, user is named `salt`; on india control user is named `ansible`.
We work around this by using `whoami` instead of the username where necessary.

## virtualenvwrapper
`virtualenvwrapper.sh` is installed at `/usr/local/bin/` on production control, but at `/usr/share/virtualenvwrapper/` on india control.
To solve this discrepency, `virtualenvwrapper.sh` has been symlinked to `/usr/local/bin` on india control:

- `sudo ln -s /usr/share/virtualenvwrapper/virtualenvwrapper.sh /usr/local/bin`

## placement of ansible dir

the ansible dir lives at `/home/salt/ansible/` on production control,
but at `/home/ansible` on india control. To fix this `/home/ansible` has been symlinked to `/home/ansible/ansible` as well.
