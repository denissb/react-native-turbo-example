package com.reactnativeturboexample;

import androidx.annotation.NonNull;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

public class TurboExampleModule extends ReactContextBaseJavaModule {
  public static final String NAME = TurboExampleModuleImpl.NAME;

  TurboExampleModule(ReactApplicationContext context) {
    super(context);
  }

  @Override
  @NonNull
  public String getName() {
    return TurboExampleModuleImpl.NAME;
  }

  // Example method
  // See https://reactnative.dev/docs/native-modules-android
  @ReactMethod
  public void multiply(double a, double b, Promise promise) {
    TurboExampleModuleImpl.multiply(a, b, promise);
  }
}
