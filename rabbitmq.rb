dep 'rabbitmq.src' do
    source 'http://www.rabbitmq.com/releases/rabbitmq-server/v2.2.0/rabbitmq-server_2.2.0-1_all.deb'
    process_source {
        sudo('dpkg -i rabbitmq-server_2.2.0-1_all.deb')
    }
    provides 'rabbitmqctl'
end
