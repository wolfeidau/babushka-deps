dep 'libssl headers.managed' do
  installs { via :apt, 'libssl-dev' }
  provides []
end
dep'ncurses.managed' do
  installs {
    via :apt, 'libncurses5-dev', 'libncursesw5-dev'
  }
  provides []
end
