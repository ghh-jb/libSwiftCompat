#import <Foundation/Foundation.h>
#import <dlfcn.h>

// Re-export all symbols from the original libswiftCore.dylib via LDFLAGS

__asm__(
    ".globl _$ss22CodingKeyRepresentableP06codingB0s0aB0_pvgTj\n"
    "_$ss22CodingKeyRepresentableP06codingB0s0aB0_pvgTj:\n"
    "    mov x0, #0\n"
    "    ret\n"
);


__asm__(
    ".globl _$ss22CodingKeyRepresentableP06codingB0xSgqd___tcs0aB0Rd__lufCTj\n"
    "_$ss22CodingKeyRepresentableP06codingB0xSgqd___tcs0aB0Rd__lufCTj:\n"
    "    mov x0, #0\n"
    "    ret\n"
);


__asm__(
    ".globl _swift_isUniquelyReferenced\n"
    "_swift_isUniquelyReferenced:\n"
    "    mov x0, #0\n"
    "    ret\n"
);


__asm__(
    ".globl _swift_isUniquelyReferenced_nonNull\n"
    "_swift_isUniquelyReferenced_nonNull:\n"
    "    mov x0, #0\n"
    "    ret\n"
);


__asm__(
    ".globl _swift_isUniquelyReferenced_nonNull_bridgeObject\n"
    "_swift_isUniquelyReferenced_nonNull_bridgeObject:\n"
    "    mov x0, #0\n"
    "    ret\n"
);


__asm__(
    ".globl _$ss22CodingKeyRepresentableMp\n"
    "_$ss22CodingKeyRepresentableMp:\n"
    "    .quad 0\n"
);

__asm__(
    ".globl _$ss22CodingKeyRepresentableP06codingB0s0aB0_pvgTq\n"
    "_$ss22CodingKeyRepresentableP06codingB0s0aB0_pvgTq:\n"
    "    mov x0, #0\n"
    "    ret\n"
);

__asm__(
    ".globl _$ss22CodingKeyRepresentableP06codingB0xSgqd___tcs0aB0Rd__lufCTq\n"
    "_$ss22CodingKeyRepresentableP06codingB0xSgqd___tcs0aB0Rd__lufCTq:\n"
    "    mov x0, #0\n"
    "    ret\n"
);


__attribute__((constructor))
static void init() {
    // Not needed due to reexport ldflag
    // dlopen("/usr/lib/swift/libswiftCore.dylib", RTLD_NOW); // Не уверен, что это нужно с ldflag-ами re-export-а
}
