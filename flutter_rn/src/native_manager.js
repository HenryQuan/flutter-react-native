import { NativeModules } from "react-native"; 
const { ReactNativeManager } = NativeModules;

class NativeManager {
    // shared instance
    static shared = new NativeManager();

    constructor() {
        if (this._nativeManager) {
            return NativeManager.shared;
        }
        this._nativeManager = ReactNativeManager;
    }

    showFlutter() {
        this._nativeManager.showFlutter();
    }
}

export { NativeManager };
