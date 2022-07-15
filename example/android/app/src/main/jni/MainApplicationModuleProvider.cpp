#include "MainApplicationModuleProvider.h"

#include <rncore.h>
#include <TurboExample.h>
#include <AppSpec.h>

namespace facebook {
namespace react {

std::shared_ptr<TurboModule> MainApplicationModuleProvider(
    const std::string moduleName,
    const JavaTurboModule::InitParams &params) {
  // Here you can provide your own module provider for TurboModules coming from
  // either your application or from external libraries. The approach to follow
  // is similar to the following (for a library called `samplelibrary`:
  //
  // auto module = samplelibrary_ModuleProvider(moduleName, params);
  // if (module != nullptr) {
  //    return module;
  // }
  // return rncore_ModuleProvider(moduleName, params);

  auto turboExampleModule = TurboExample_ModuleProvider(moduleName, params);

  if (turboExampleModule != nullptr) {
    return turboExampleModule;
  }

  auto appSpecModule = AppSpec_ModuleProvider(moduleName, params);

  if (appSpecModule != nullptr) {
    return appSpecModule;
  }

  return rncore_ModuleProvider(moduleName, params);
}

} // namespace react
} // namespace facebook
