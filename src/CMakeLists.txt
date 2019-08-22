cmake_minimum_required(VERSION 3.2)

project(myxrm)

set(SOURCE_FILES
		MicroCore.cpp
		tools.cpp
		CmdLineOptions.cpp
		CurrentBlockchainStatus.cpp
		MySqlConnector.cpp
		MySqlAccounts.cpp
		ssqlses.cpp
		YourMoneroRequests.cpp
		TxSearch.cpp
                RPCCalls.cpp
		OutputInputIdentification.cpp
		version.h.in
		BlockchainSetup.cpp
		ThreadRAII.cpp
                MysqlPing.cpp
                TxUnlockChecker.cpp
                RandomOutputs.cpp)

# make static library called libmyxrm
# that we are going to link to
# in the root CMakeLists.txt file
add_library(myxrm
		STATIC
		${SOURCE_FILES})

target_link_libraries(myxrm 
    PUBLIC
    ${restbed_LIBRARY}
    ${MYSQLPP_LIBRARIES})

target_include_directories(myxrm 
    PUBLIC
    ${restbed_INCLUDE}
${MYSQLPP_INCLUDE_DIRS})
