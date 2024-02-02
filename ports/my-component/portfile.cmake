vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/s-h-r-e-y/my-component.git
    REF b6dd5bf6bb3ef7ff596f6e15ac8f20aa2efca5c0
)

vcpkg_add_to_path(PREPEND "C:/Program Files/dotnet")

vcpkg_msbuild_install(
    SOURCE_PATH ${SOURCE_PATH}
    PROJECT_SUBPATH CppProject/CppProject.vcxproj
    NO_INSTALL
)

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")