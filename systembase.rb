dep 'systembase' do
  requires {
    on :linux, 'vim.managed', 'curl.managed', 'htop.managed', 'jnettop.managed', 'screen.managed', 'nmap.managed', 'tree.managed'
  }
end
