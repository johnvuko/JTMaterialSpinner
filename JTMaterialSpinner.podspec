Pod::Spec.new do |s|
  s.name         = "JTMaterialSpinner"
  s.version      = "3.0.4"
  s.summary      = "An iOS spinner view based on material design."
  s.homepage     = "https://github.com/jonathantribouharet/JTMaterialSpinner"
  s.license      = { :type => 'MIT' }
  s.author       = { "Jonathan VUKOVICH TRIBOUHARET" => "jonathan.tribouharet@gmail.com" }
  s.ios.deployment_target = '8.0'
  s.source       = { :git => "https://github.com/jonathantribouharet/JTMaterialSpinner.git", :tag => s.version.to_s }
  s.source_files  = 'JTMaterialSpinner/*'
  s.requires_arc = true
  s.screenshots   = ["https://raw.githubusercontent.com/jonathantribouharet/JTMaterialSpinner/master/Screens/example.gif"]
  pod_target_xcconfig = {
    'SWIFT_VERSION' => '4.2'
  }
end
