-- Compile And Run C/C++ File
function CompileAndRunCxx()
    local current_file = vim.fn.expand("%:p")

    local makefile_path = vim.fn.expand("%:p:h") .. "/Makefile"
    local makefile_exists = vim.fn.filereadable(makefile_path) == 1

    if makefile_exists then
        local make_command = string.format("make -C %s clean ; make -C %s", vim.fn.expand("%:p:h"), vim.fn.expand("%:p:h"))
        vim.fn.system(make_command)
        local gdb_command = string.format("GdbStartLLDB lldb %s/main", vim.fn.expand("%:p:h"))
        vim.cmd(gdb_command)
    else
        local output_file = current_file:gsub("%..+$", "")
        local compile_command = string.format("clang++ -std=c++2a -g %s -o %s", current_file, output_file)
        vim.fn.system(compile_command)
        local gdb_command = string.format("GdbStartLLDB lldb %s", output_file)
        vim.cmd(gdb_command)
    end
end
