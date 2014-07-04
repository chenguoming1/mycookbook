default['php']['ext_dir'] = '/usr/lib64/php/modules'
default['php']['ext_conf_dir'] = '/etc/php.d'
default['php']['zend_extension_conf_vars'] = {'zend_extension' => "#{php['ext_dir']}/ZendGuardLoader.so", "zend_loader.enable" => 1}
