cookbook_file "ZendGuardLoader.so" do
  path "#{default['php']['ext_dir']}/ZendGuardLoader.so"
  mode "0644"
  action :create
end