name             'easyrepeat'
maintainer       'Roberto Jimeno'
maintainer_email 'roberto.jimeno@gmail.com'
license          'All rights reserved'
description      'Helps easily produce repeatable system configurations.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.0'

supports  'ubuntu', '= 14.04'
supports  'ubuntu', '= 12.04'
supports  'centos', '= 6.5'

%w{ nginx }.each do |cookbook|
  depends cookbook
end
