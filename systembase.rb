dep 'systembase' do
  requires 'vim.managed', 'curl.managed', 'htop.managed', 'jnettop.managed', 'screen.managed', 'sysstat.managed', 'nmap.managed', 'tree.managed'
end
dep 'htop.managed'
dep 'java.managed' do
  installs { via :apt, 'sun-java6-jre' }
  after { shell "set -Ux JAVA_HOME /usr/lib/jvm/java-6-sun" }
end
dep 'jnettop.managed' do
  installs { via :apt, 'jnettop' }
end
dep 'nmap.managed'
dep 'screen.managed'
dep 'sysstat.managed' do
  provides 'vmstat', 'iostat'
end
dep 'tree.managed'
dep 'vim.managed'
