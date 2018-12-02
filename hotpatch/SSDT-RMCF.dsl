// configuration data for other SSDTs in this pack

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "L440", "_RMCF", 0)
{
#endif
    Device(RMCF)
    {
        Name(_ADR, 0)   // do not remove

        Method(HELP)
        {
            Store("TYPE indicates type of the computer. 0: desktop, 1: laptop", Debug)
            Store("BKLT indicates the type of backlight control. 0: IntelBacklight, 1: AppleBacklight", Debug)
        }

        // TYPE: Indicates the type of computer... desktop or laptop
        //
        //  0: desktop
        //  1: laptop
        Name(TYPE, 1)

        // DWOU: Disable wake on USB
        // 1: Disable wake on USB
        // 0: Do not disable wake on USB
        Name(DWOU, 1)
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
