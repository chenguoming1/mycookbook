default['php']['ext_dir'] = '/usr/lib64/php/modules'
default['php']['ext_conf_dir'] = '/etc/php.d'
default['php']['extension_template'] = 'extension.ini.erb'
default['php']['zend_extension']['config_vars'] = {'zend_extension' => "#{php['ext_dir']}/ZendGuardLoader.so", "zend_loader.enable" => 1}
