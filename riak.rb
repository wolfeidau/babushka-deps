dep 'riak' do
    arch = `uname -m`.strip
  
    if arch == "unknown" || arch =~ / /
        arch = `uname -m`.strip
    end

    if arch =~ /^i.86$/
        arch = "i386"
    elsif arch == "x86_64"
        arch = "amd64"
    end 
  
    source "http://downloads.basho.com/riak/riak-0.14/riak_0.14.0-1_#{arch}.deb"
    
    process_source {
        sudo("dpkg -i riak_0.14.0-1_#{arch}.deb")
    }
    provides 'riak', 'riak-admin'
end
