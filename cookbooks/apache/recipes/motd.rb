
hostnamevar = node['hostname']

file '/etc/motd' do
	content "Hostname is ----->>> : #{hostnamevar}"
end
