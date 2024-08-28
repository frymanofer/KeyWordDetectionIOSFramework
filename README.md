# KeyWordDetectionIOSFramework

Welcome to the iOS Framework for KeyWordDetection by DaVoice.io.

This framework provides robust keyword detection capabilities on iOS, and can be used natively or within React Native projects.

You can use it as Native or use it with our React Native support (https://github.com/frymanofer/ReactNative_WakeWordDetection)

Installation
Native iOS Integration
To integrate the framework natively into your iOS project, follow these steps:

Download the Framework: Manually add the KeyWordDetection framework to your Xcode project.
Modify Your Podfile: Add the necessary dependencies and configurations.

target 'MyProjectName' do
  \# Your existing configurations...

  \# DAVOICE REQUIRED CONFIGURATION
  use_frameworks! :linkage => :static

  \# Required Pods
  pod 'onnxruntime-objc', '~> 1.18.0'
  pod 'ios-voice-processor', '~> 1.1.0'
end

Note: We are working on supporting various linkage types; currently, linkage must be static.

React Native Integration
To use this framework in a React Native project, visit our React Native setup page: (https://github.com/frymanofer/ReactNative_WakeWordDetection)

Quick Start:
1. Go through the native instruction - Download and install KeyWordDetection IOS framework in xcode and make changes to the Podfile as in the above instructions.
2. npm install react-native

3. Set Up Keyword Detection:

<strong>Below is an example of how to use the framework with React Native:

Import the main class:</strong>

  // import KeyWordRNBridge from 'react-native-davoice-keywordsdetection'; Not yet available
  import KeyWordRNBridge from './rnbrigedspotter/KeyWordRNBridge';

<strong>Setup your callback on keyword / wakeword detected:</strong>

  const onKeyWordDetected = async (keywordIndex: any) => {
    // Do whatever you need on callback
    // Stop searching for Keywords if it makes sense - KeyWordRNBridge.stopKeyWord();
  };

<strong>Setup and activate keywords detection:</strong> 
  <li>Provide the model file name, you do not have to provide a path the code will find the file for you.</li>
  <li>Provide the threashold - recommended 0.9999 to prevent any false positive.</li>
  <li>Provide the falsePositiveChecks - recommended setting of #2:</li>

      try {
          let modelParams = {modelName:"my_key_word.onnx", /* replace with your model */ 
              threshold: 0.9999, /* false positive sensitivity */ 
              falsePositiveChecks: 2} /* How many checks for false positives */
<strong>Initialize the detection:</strong>

          const result = await KeyWordRNBridge.initKeyWord(modelParams.modelName, modelParams.threshold, modelParams.falsePositiveChecks);
<strong>Setup the callback:</strong>

          KeyWordRNBridge.onKeyWordEvent((event) => {
              onKeyWordDetected(event);
          });
<strong>Now we are set - you can start listening and detect key words:</strong>

          KeyWordRNBridge.startKeyWord();
    } catch (e) {
        console.log("ERROR loadDavoice", e);
    }
</ul>

Support
For any questions or support, please contact us at:

Email: info@davoice.io
Website: DaVoice.io
