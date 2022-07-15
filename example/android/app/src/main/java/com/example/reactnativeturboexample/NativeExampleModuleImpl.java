package com.turbomoduleexampleproject;

import androidx.annotation.NonNull;

import com.facebook.fbreact.specs.NativeExampleModuleSpec;
import com.facebook.react.bridge.ReactApplicationContext;

public class NativeExampleModuleImpl extends NativeExampleModuleSpec {
    public static String NAME = "NativeExampleModule";

    public NativeExampleModuleImpl(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @NonNull
    @Override
    public String getName() {
        return NAME;
    }

    @Override
    public String getGreeting(String name) {
        return "Hello dear " + name + "!";
    }
}