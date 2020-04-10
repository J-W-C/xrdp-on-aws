
install: \
	/etc/xrdp/sesman.ini \
	/etc/xrdp/xrdp.ini \
	/etc/X11/xrdp/xorg.conf	

backup = "--backup=numbered"

/etc/xrdp/sesman.ini: ./sesman.ini
	install $(backup) -D ./sesman.ini /etc/xrdp/sesman.ini

/etc/xrdp/xrdp.ini: ./xrdp.ini
	install $(backup) -D ./xrdp.ini /etc/xrdp/xrdp.ini

/etc/X11/xrdp/xorg.conf: ./xorg.conf
	install $(backup) -D ./xorg.conf /etc/X11/xrdp/xorg.conf

