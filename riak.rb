dep 'riak.src' do
  requires 'erlang.src'
  source 'http://downloads.basho.com/riak/CURRENT/riak-0.14.0-1.tar.gz'
  provides 'erl', 'erlc'
end

