cookbook_file "ZendGuardLoader.so" do
  path "#{node['php']['ext_dir']}/ZendGuardLoader.so"
  mode "0755"
  action :create
end