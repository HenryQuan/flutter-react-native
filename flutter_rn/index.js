import * as React from 'react';
import { AppRegistry } from "react-native";
import { DefaultTheme, Provider as PaperProvider } from 'react-native-paper';
import { RNApp } from "./src/rn_app";

const theme = {
    ...DefaultTheme,
    roundness: 2,
    colors: {
      ...DefaultTheme.colors,
      // material blue
      primary: '#2196F3',
    },
};

const PaperApp = () => {
    return (
        <PaperProvider theme={theme}>
            <RNApp />
        </PaperProvider>
    );
}

AppRegistry.registerComponent("rn-module", () => PaperApp);
