cookbook_file "ZendGuardLoader.so" do
  path "#{node['php']['ext_dir']}/ZendGuardLoader.so"
  mode "0755"
  action :create
end

template "#{node['php']['ext_conf_dir']}/zend_guard_loader.ini" do
  source node['php']['extension_template']
  owner 'root'
  group 'root'
  mode 00644
  variables(node['zend_extension']['config_vars'])
end