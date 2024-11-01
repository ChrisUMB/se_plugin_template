// This is required if you want to build your plugin with newer MSVC compilers/
#pragma comment(lib, "legacy_stdio_definitions.lib")

#include "template_plugin.hpp"
#include "tier1/tier1.h"
#include "tier2/tier2.h"
#include "tier3/tier3.h"

PluginTemplatePlugin g_vPluginTemplatePlugin;

EXPOSE_SINGLE_INTERFACE_GLOBALVAR(PluginTemplatePlugin, IServerPluginCallbacks, INTERFACEVERSION_ISERVERPLUGINCALLBACKS,
                                  g_vPluginTemplatePlugin)


bool PluginTemplatePlugin::Load(CreateInterfaceFn interfaceFactory, CreateInterfaceFn gameServerFactory) {
    ConnectTier1Libraries(&interfaceFactory, 1);
    ConnectTier2Libraries(&interfaceFactory, 1);
    ConnectTier3Libraries(&interfaceFactory, 1);


    Msg("\nTemplate Plugin Loaded\n");
    return true;
}

void PluginTemplatePlugin::Unload() {
    DisconnectTier3Libraries();
    DisconnectTier2Libraries();
    DisconnectTier1Libraries();
}

const char *PluginTemplatePlugin::GetPluginDescription() {
    return "Plugin template for the Source Engine.";
}
