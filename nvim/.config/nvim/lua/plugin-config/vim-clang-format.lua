vim.g['clang_format#detect_style_file'] = 1
vim.g['clang_format#auto_format'] = 1
vim.g['clang_format#enable_fallback_style'] = 1
vim.g['clang_format#style_options'] = {
    Language = 'Cpp',
    BasedOnStyle = 'LLVM',
    UseTab = 'Never',
    TabWidth = 4,
    IndentWidth = 4,
    AlignConsecutiveAssignments = true,
    PointerAlignment = 'Left',
    DerivePointerAlignment = false,
    AlignTrailingComments = true,
    AccessModifierOffset = -4,
    AlignArrayOfStructures = 'Left'
}
