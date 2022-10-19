require 'gem2deb/rake/testtask'

rejectlist = %w(
  test/test_inet_diag_socket.rb
  test/test_linux_all_tcp_listen_stats.rb
  test/test_linux_ipv6.rb
  test/test_watcher.rb
)

Gem2Deb::Rake::TestTask.new do |t|
  t.libs = ['test']
  t.test_files = FileList['test/**/test_*.rb'] - rejectlist
end
