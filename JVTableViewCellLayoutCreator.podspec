Pod::Spec.new do |s|
  s.name             = 'JVTableViewCellLayoutCreator'
  s.version          = '0.2.5'
  s.summary          = 'A short description of JVTableViewCellLayoutCreator.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Jasperav/JVTableViewCellLayoutCreator'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jasperav' => 'Jasperav@hotmail.com' }
  s.source           = { :git => 'https://github.com/Jasperav/JVTableViewCellLayoutCreator.git', :tag => s.version.to_s }


  s.ios.deployment_target = '13.0'

  s.source_files = 'JVTableViewCellLayoutCreator/Classes/**/*'

   s.dependency 'JVConstraintEdges'
   s.dependency 'JVDebugProcessorMacros'
end
