#!/bin/sh
zola build && rsync -rvz --progress -e 'ssh -p 57018' ./public/* andrew@let-them.cyou:/srv/www/yac
