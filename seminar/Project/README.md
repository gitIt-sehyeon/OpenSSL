## Before you start OpenSSL Project, you should know about...

### You must have openssl and mingw

All chapter must have .vscode / Makefile like the code below

Build : mingw32-make

Clean up : mingw32-make clean


in .vscode, c_cpp_properties.json and tasks.json

### c_cpp_properties.json
```
{
    "configurations": [
        {
            "name": "Win32",
            "includePath": [
                "${workspaceFolder}/**",
                "{your_path}/OpenSSL-Win64/include"
            ],
            "defines": [
                "_DEBUG",
                "UNICODE",
                "_UNICODE"
            ],
            "windowsSdkVersion": "10.0.22000.0",
            "compilerPath": "{your_path}/mingw64/bin/gcc.exe",
            "cStandard": "c17",
            "cppStandard": "c++17",
            "intelliSenseMode": "windows-gcc-x64"
        }
    ],
    "version": 4
} 
```

### tasks.json
```
{
  "version": "2.0.0",
  "tasks": [
    {
      "label": "Make OpenSSL Project",
      "type": "shell",
      "command": "mingw32-make",
      "options": {
        "cwd": "${workspaceFolder}"  // (path) folder has Makefile
      },
      "group": "build",
      "problemMatcher": []
    }
  ]
}

```

