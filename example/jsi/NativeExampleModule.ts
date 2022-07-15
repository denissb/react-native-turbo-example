import type { TurboModule } from 'react-native';
import { TurboModuleRegistry } from 'react-native';

export interface Spec extends TurboModule {
    getGreeting(name: string): string;
}

 export default TurboModuleRegistry.getEnforcing<Spec>('NativeExampleModule');