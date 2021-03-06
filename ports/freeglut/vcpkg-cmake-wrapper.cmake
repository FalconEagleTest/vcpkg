_find_package(${ARGS})
if(GLUT_FOUND)
    find_library(XRANDR_LIBRARY NAMES xrandr Xrandr)
    if(XRANDR_LIBRARY)
        list(APPEND GLUT_LIBRARIES ${XRANDR_LIBRARY})
        if(TARGET GLUT::GLUT)
            set_property(TARGET GLUT::GLUT APPEND PROPERTY INTERFACE_LINK_LIBRARIES ${XRANDR_LIBRARY})
        endif()
    endif()
endif()
