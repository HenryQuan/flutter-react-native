import React from "react";
import { Button, StyleSheet, Text, View } from "react-native";
import { NativeManager } from "./native_manager";

const nativeManager = new NativeManager();

const RNApp = () => {
    return (
        <View style={styles.container}>
            <Text style={styles.hello}>Hello World from React Native</Text>
            <Button onPress={() => {
                nativeManager.showFlutter();
            }} title="Show Flutter" />
        </View>
    );
};

const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: "center",
    },
    hello: {
        fontSize: 20,
        textAlign: "center",
        margin: 10,
    },
});

export { RNApp };
