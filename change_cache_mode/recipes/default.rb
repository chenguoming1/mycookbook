node[:deploy].each do |app_name, deploy_config|
	app_root = "#{deploy_config[:deploy_to]}/current/forums/cache"
	directory app_root do
		mode 0664
	end
end
