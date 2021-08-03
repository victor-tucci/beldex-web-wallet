# - Find MySQL++
# Find the MySQL++ includes and client library
# This module defines
#  MYSQLPP_INCLUDE_DIR, where to find mysql.h
#  MYSQLPP_LIBRARIES, the libraries needed to use MySQL.
#  MYSQLPP_FOUND, If false, do not try to use MySQL.
# Adapted from: https://raw.githubusercontent.com/piratical/Madeline_2.0_PDE/master/cmake/modules/FindMySQL%2B%2B.cmake

set(MYSQLPP_INCLUDE_DIRS "")

<<<<<<< HEAD

foreach(component  mysql++.h  mysql.h mysql_version.h) 
=======
foreach(component  mysql++.h  mysql.h) 
>>>>>>> upstream/master

    FIND_PATH(MYSQLPP_INCLUDE_${component} 
        NAMES ${component} 
       PATHS
       /usr/include/mysql
       /usr/include/mysql++
       /usr/local/include/mysql++
       /opt/mysql++/include/mysql++
       /opt/mysqlpp/include/mysql++
       /opt/mysqlpp/include/)

   list(APPEND MYSQLPP_INCLUDE_DIRS 
               ${MYSQLPP_INCLUDE_${component}})

endforeach()

set(MYSQLPP_LIBRARIES "")

foreach(component  mysqlpp mysqlclient) 

    FIND_LIBRARY(MYSQL_LIBRARY_${component}
        NAMES ${component}
       PATHS 
<<<<<<< HEAD
       /usr/include/mysql
       /usr/include/mysql++
=======
>>>>>>> upstream/master
       /usr/lib 
       /usr/local/lib 
       /opt/mysql++
       /opt/mysqlpp
       /opt/mysqlpp/lib)

   list(APPEND MYSQLPP_LIBRARIES ${MYSQL_LIBRARY_${component}})

endforeach()

<<<<<<< HEAD
if( MYSQLPP_INCLUDE_DIR AND EXISTS "${MYSQLPP_INCLUDE_DIRS}/mysql_version.h" )
	file( STRINGS "${MYSQLPP_INCLUDE_DIRS}/mysql_version.h"
		MYSQLPP_VERSION_H REGEX "^#define[ \t]+MYSQLPP_SERVER_VERSION[ \t]+\"[^\"]+\".*$" )
	string( REGEX REPLACE
		"^.*MYSQLPP_SERVER_VERSION[ \t]+\"([^\"]+)\".*$" "\\1" MYSQLPP_VERSION_STRING
		"${MYSQLPP_VERSION_H}" )
endif()
=======

>>>>>>> upstream/master

if(MYSQLPP_INCLUDE_DIRS AND MYSQLPP_LIBRARIES)
   set(MYSQLPP_FOUND TRUE)
   message(STATUS "Found MySQL++: ${MYSQLPP_INCLUDE_DIRS}, ${MYSQLPP_LIBRARIES}")
else(MYSQLPP_INCLUDE_DIRS AND MYSQLPP_LIBRARIES)
   set(MYSQLPP_FOUND FALSE)
   message(STATUS "MySQL++ was not found.")
endif(MYSQLPP_INCLUDE_DIRS AND MYSQLPP_LIBRARIES)

mark_as_advanced(MYSQLPP_INCLUDE_DIRS MYSQLPP_LIBRARIES)

