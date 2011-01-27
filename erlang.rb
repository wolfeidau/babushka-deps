dep 'erlang.src' do
  requires 'libssl headers.managed', 'ncurses.managed'
  source 'git://github.com/erlang/otp.git'
  preconfigure { shell 'git checkout OTP_R14B01 && autoconf' }
  provides 'erl', 'erlc'
end
