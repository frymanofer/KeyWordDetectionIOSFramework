// KeyWordRNBridge.js
import { NativeModules, NativeEventEmitter } from 'react-native';

const { KeyWordRNBridge } = NativeModules;
const keywordRNBridgeEmitter = new NativeEventEmitter(KeyWordRNBridge);

const initKeyWordsDetection = (modelName, threshold, buffer_cnt) => {
    return KeyWordRNBridge.initKeyWordsDetection(modelName, threshold, buffer_cnt);
};

const startKeyWordsDetection = () => {
    KeyWordRNBridge.startKeyWordsDetection();
};

const stopKeyWordsDetection = () => {
    KeyWordRNBridge.stopKeyWordsDetection();
};

// Event listeners
const onKeyWordsDetectionEvent = (callback) => {
    return keywordRNBridgeEmitter.addListener('onKeyWordsDetectionEvent', callback);
};

export default {
    initKeyWordsDetection,
    startKeyWordsDetection,
    stopKeyWordsDetection,
    onKeyWordsDetectionEvent,
};

