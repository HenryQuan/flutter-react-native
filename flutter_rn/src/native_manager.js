import { NativeModules } from "react-native"; 
const { ReactNativeManager } = NativeModules;

class NativeManager {
    constructor() {
        this._nativeManager = ReactNativeManager;
    }

    showFlutter() {
        this._nativeManager.showFlutter();
    }
}

export { NativeManager };
