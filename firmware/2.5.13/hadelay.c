////////////////////////////////////////////////////////////////////////////////
// Projekt:              Home-Automation                                      //
// Modul:                Delay                                                //
// Version:              1.0 (0)                                              //
////////////////////////////////////////////////////////////////////////////////
// Erstellt am:          05.02.2007                                           //
// Erstellt von:         Holger Heuser                                        //
// Zuletzt ge�ndert am:  05.02.2007                                           //
// Zuletzt ge�ndert von: Holger Heuser                                        //
////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////
// Module einbinden                                                           //
////////////////////////////////////////////////////////////////////////////////

// Basis Module ////////////////////////////////////////////////////////////////

#include <hadelay.h>


////////////////////////////////////////////////////////////////////////////////
// Funktionen                                                                 //
////////////////////////////////////////////////////////////////////////////////

void Delay(tWord tCount) {
	asm volatile (
		"1: sbiw %0,1" "\n\t"
		"brne 1b"
		: "=w" (tCount)
		: "0" (tCount)
	);
}
