import React from "react";
import { Button, StyleSheet, Text, View } from "react-native";
import { NativeManager } from "./native_manager";


const RNApp = () => {
    const [counter, setCounter] = React.useState(0);

    return (
        <View style={styles.container}>
            <Text style={styles.hello}>Hello World from React Native</Text>
            <Text style={styles.counter}>{counter}</Text>
            <Button onPress={() => {
                NativeManager.shared.showFlutter();
                setCounter(counter + 1);
            }} title="Show Flutter" />
        </View>
    );
};

const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: "center",
    },
    counter: {
        fontSize: 20,
        textAlign: "center",
    },
    hello: {
        fontSize: 20,
        textAlign: "center",
        margin: 10,
    },
});

export { RNApp };
