import React from "react";
import { Button, StyleSheet, Text, View } from "react-native";
import { Appbar } from "react-native-paper";
import { NativeManager } from "./native_manager";


const RNApp = () => {
    const [counter, setCounter] = React.useState(0);

    return (
        <View style={styles.container}>
            <Appbar.Header>
                <Appbar.Content title="Home" />
                <Appbar.Action icon="refresh" onPress={() => {
                    NativeManager.shared.showFlutter();
                }} />
            </Appbar.Header>

            <View style={styles.content}>
                <Text>Hello World in React Native</Text>
            </View>
        </View>
    );
};

const styles = StyleSheet.create({
    container: {
        flex: 1,
    },
    content: {
        flex: 1,
        justifyContent: "center",
        alignItems: "center",
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
