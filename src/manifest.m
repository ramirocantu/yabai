#include <Carbon/Carbon.h>
#include <Cocoa/Cocoa.h>
#include <CoreVideo/CoreVideo.h>
#include <mach-o/dyld.h>
#include <mach-o/swap.h>
#include <bootstrap.h>

#ifdef __x86_64__
#include <emmintrin.h>
#elif __arm64__
#include <arm_neon.h>
#endif

#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <dirent.h>
#include <stdbool.h>
#include <assert.h>
#include <fcntl.h>
#include <regex.h>
#include <execinfo.h>
#include <signal.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/sysctl.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <poll.h>
#include <semaphore.h>
#include <pthread.h>
#include <pwd.h>
#include <spawn.h>
#include <libproc.h>

#include "misc/extern.h"
#include "misc/macros.h"
#include "misc/memory_pool.h"
#include "misc/ts.h"
#include "misc/timer.h"
//#include "misc/autorelease.h"
#include "misc/notify.h"
#include "misc/log.h"
#include "misc/helpers.h"
#include "misc/macho_dlsym.h"
#include "misc/sbuffer.h"
#define HASHTABLE_IMPLEMENTATION
#include "misc/hashtable.h"
#undef HASHTABLE_IMPLEMENTATION
#include "misc/service.h"

#include "osax/common.h"

#include "view.h"
#include "sa.h"
#include "event_loop.h"
#include "event_signal.h"
#include "workspace.h"
#include "rule.h"
#include "message.h"
#include "display.h"
#include "space.h"
#include "window.h"
#include "process_manager.h"
#include "application.h"
#include "display_manager.h"
#include "space_manager.h"
#include "window_manager.h"
#include "mouse_handler.h"

#include "sa.m"
#include "mission_control.c"
#include "event_loop.c"
#include "event_signal.c"
#include "workspace.m"
#include "rule.c"
#include "message.c"
#include "display.c"
#include "space.c"
#include "view.c"
#include "window.c"
#include "process_manager.c"
#include "application.c"
#include "display_manager.c"
#include "space_manager.c"
#include "window_manager.c"
#include "mouse_handler.c"
#include "yabai.c"
