dep 'erlang.src' do
  requires 'libssl headers.managed', 'ncurses.managed'
  source 'http://www.erlang.org/download/otp_src_R14B01.tar.gz'
  provides 'erl', 'erlc'
end
