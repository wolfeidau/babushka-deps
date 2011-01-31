dep 'rabbitmq.src' do
    source 'http://downloads.basho.com/riak/riak-0.14/riak_0.14.0-1_i386.deb'
    process_source {
        sudo('dpkg -i riak_0.14.0-1_i386.deb')
    }
    provides 'riak', 'riak-admin'
end
