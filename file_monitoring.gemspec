Gem::Specification.new do |s|
  s.name        = 'file_monitoring'
  s.version     = '0.0.4'
  s.date        = '2012-01-01'
  s.summary     = 'Deamon for monitoring file changes.'
  s.description = 'Deamon for monitoring file changes in set of patterns (blobs).'
  s.authors     = ['Gena Petelko, Kolman Vornovitsky']
  s.email       = 'kolmanv@gmail.com'
  s.homepage    = 'http://github.com/kolmanv/bbfs'
  s.files       = ['lib/file_monitoring.rb',
                   'lib/file_monitoring/file_monitoring.rb',
                   'lib/file_monitoring/monitor_path.rb']
  s.executables << 'file_monitoring'
  s.add_dependency('algorithms')
  s.add_dependency('daemons')
  s.add_dependency('params')
end
