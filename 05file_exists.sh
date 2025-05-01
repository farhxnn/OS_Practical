#!/bin/bash

echo -n "Enter the filename: "
read name
echo

echo "File details:"

if [ -f "$name" ]; then
    echo "✅ File exists"
    echo -n "📦 File size: "
    wc -c < "$name"
    
    echo -n "📂 File type: "
    file "$name"
    
    echo -n "🔐 Permissions: "
    if [ -r "$name" ] && [ -w "$name" ] && [ -x "$name" ]; then
        echo "Readable, Writable, and Executable"
    elif [ -r "$name" ] && [ -w "$name" ]; then
        echo "Readable and Writable"
    elif [ -r "$name" ]; then
        echo "Read-only"
    elif [ -w "$name" ]; then
        echo "Write-only"
    elif [ -x "$name" ]; then
        echo "Executable only"
    else
        echo "No read, write, or execute permissions"
    fi
else
    echo "❌ File does not exist"
fi

