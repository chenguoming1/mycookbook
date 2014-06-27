node[:deploy].each do |app_name, deploy_config|
	dir = "#{deploy_config[:deploy_to]}/current"	
	message = "Syncing staging to github at #{Time.now.utc}"
	system "git -C #{dir} add ."
	system "git -C #{dir} add -u"
	system "git -C #{dir} commit -m \"#{message}\""
	system "git -C #{dir} pull origin test"
	system "git -C #{dir} tag -a #{Time.now.to_i} -m \"Synced at #{Time.now.utc}\""
	system "git -C #{dir} push --tags origin test"
	puts "## Done!"
end
