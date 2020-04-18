/*
 * Copyright (c) 2011-2020 Technosoftware GmbH. All rights reserved
 * Web: http://www.technosoftware.com 
 * 
 * Purpose: 
 *
 * This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
 * WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
 */

#if !defined(CLASSICNODEMANAGER_H)
#define CLASSICNODEMANAGER_H

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/*
 * ----- BEGIN SAMPLE IMPLEMENTATION -----
 */

/*
 * Application Definitions (SAMPLE)
 */
#define UPDATE_PERIOD         200            /* Data Cache update rate in milliseconds */


/*
 * Signal ( Item ) Types (SAMPLE)
 /
#define SIGMASK_INTERN_X      0x010000       /* static In/Out/InOut */
#define SIGMASK_INTERN_IN     0x110000       /* input */
#define SIGMASK_INTERN_OUT    0x210000       /* output */
#define SIGMASK_INTERN_INOUT  0x410000       /* readable output */
#define SIGMASK_SIMULATED     0x510000       /* internal item with simulated data */
#define SIGMASK_REMOVABLE     0x610000       /* internal removable item */

/*
 * ----- END SAMPLE IMPLEMENTATION ----- 
 */

#endif // !defined(CLASSICNODEMANAGER_H)
