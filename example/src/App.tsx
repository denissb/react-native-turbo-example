import React, { useCallback, useEffect, useState } from 'react';
import { StyleSheet, View, Text, Button, Alert } from 'react-native';

import { multiply } from 'react-native-turbo-example';

import NativeExampleModule from '../jsi/NativeExampleModule'

export default function App() {
  const [result, setResult] = useState<number | undefined>();

  const showGreeting = useCallback(() => {
    const message = NativeExampleModule.getGreeting('JSI');
    Alert.alert(message);
  });


  useEffect(() => {
    multiply(3, 7).then(setResult);
  }, []);

  return (
    <View style={styles.container}>
      <Text>Result from example package: {result}</Text>
      <Button title="Hello from built in TurboModule" onPress={showGreeting} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
