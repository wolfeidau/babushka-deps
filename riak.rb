dep 'riak.src' do
    arch = `uname -m`.strip
  
    source "http://downloads.basho.com/riak/riak-0.14/riak_0.14.0-1_#{arch}.deb"
    
    process_source {
        sudo("dpkg -i riak_0.14.0-1_#{arch}.deb")
    }
    provides 'riak', 'riak-admin'
end
