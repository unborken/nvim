return {
    settings = {
        basedpyright = {
            analysis = {
                typeCheckingMode = "standard",
                exclude = {
                    "bazel-*",
                    "**/node_modules",
                    "**/__pycache__",
                    "**/.*"
                },
            }
        }
    },
}
