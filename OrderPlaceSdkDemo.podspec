#
#  Be sure to run `pod spec lint testCocoapods.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "OrderPlaceSdkDemo"
  s.version      = "0.0.16"
  s.summary      = "A short description of testCocoapods."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = "i am description file.i am description file."

  s.homepage     = "https://github.com/PeiJueChen/testCocoapods"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "风筝" => "13286953452@126.com" }
  # Or just: s.author    = "风筝"
  # s.authors            = { "风筝" => "13286953452@126.com" }
  # s.social_media_url   = "http://twitter.com/风筝"


  # s.platform     = :ios
    s.requires_arc = true

   s.ios.deployment_target = "8.0"

  s.source       = { :git => "https://github.com/PeiJueChen/testCocoapods.git", :tag => "#{s.version}" }


  s.source_files = "OrderPlaceSdkDemo/Classes/**/*"
    s.resource_bundles = {
    'OrderPlaceSdkDemo' => ['OrderPlaceSdkDemo/Assets/**/*.{storyboard,xib}','OrderPlaceSdkDemo/AlipaySDK.bundle']
    }

#s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #



  # s.framework  = "SomeFramework"
s.frameworks = "SystemConfiguration", "CoreTelephony", "QuartzCore", "CoreText", "CoreGraphics", "UIKit", "Foundation", "CFNetwork", "CoreMotion"

s.vendored_frameworks = 'OrderPlaceSdkDemo/AlipaySDK.framework'
  # s.library   = "iconv"
  s.libraries = 'libc++.tbd', 'libz.tbd'

#   s.default_subspec   = 'Core'

#   s.subspec "Core" do |core|
#   core.resources    = 'OrderPlaceSdkDemo/AlipaySDK.bundle'
#   core.vendored_frameworks = 'OrderPlaceSdkDemo/AlipaySDK.framework'
#   core.public_header_files = 'OrderPlaceSdkDemoOrderPlaceSdkDemo/AlipaySDK.framework/Headers/**/*.h'
#   end



  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
#s.static_framework = true
#   s.dependency "AlipaySDK-2.0", "~> 15.0.2"

end
