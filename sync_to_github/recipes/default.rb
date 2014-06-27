node[:deploy].each do |app_name, deploy_config|
	dir = "#{deploy_config[:deploy_to]}/current"	
	message = "Syncing staging to github at #{Time.now.utc}"
	system "cd #{dir} && git add ."
	system "cd #{dir} && git add -u"
	system "cd #{dir} && git commit -m \"#{message}\""
	system "cd #{dir} && git pull origin test"
	system "cd #{dir} && git tag -a #{Time.now.to_i} -m \"Synced at #{Time.now.utc}\""
	system "cd #{dir} && git push --tags origin test"
	puts "## Done!"
end
