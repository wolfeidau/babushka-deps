dep 'erlang.src' do
  requires 'libssl headers.managed', 'ncurses.managed'
  source 'http://www3.erlang.org/download/otp_src_R14B02.tar.gz'
  provides 'erl', 'erlc'
end
