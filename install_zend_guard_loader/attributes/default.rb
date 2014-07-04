default['php']['ext_dir'] = '/usr/lib64/php/modules'
default['php']['ext_conf_dir'] = '/etc/php.d'
default['php']['extension_template'] = 'extension.ini.erb'
default['php']['zend_extension'] = {
	:name => 'zend_loader',
	:extensions => {"#{php['ext_dir']}/ZendGuardLoader.so" => true},
	:directives => {'enable' => 1}
}