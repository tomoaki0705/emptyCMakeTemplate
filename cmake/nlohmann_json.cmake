
include(ExternalProject)
set(NLOHMANN_MD5_EXPECTED "5eabadfb8cf8fe1bf0811535c65f027f")
set(NLOHMANN_FILENAME   "json.hpp")
set(NLOHMANN_LOCAL_COPY "${CACHE_DIR}/${NLOHMANN_FILENAME}")
set(NLOHMANN_GITHUB_URL "https://github.com/nlohmann/json/releases/download/v3.9.1/${NLOHMANN_FILENAME}")
file(MAKE_DIRECTORY ${THIRD_PARTY_DIR}/include)
file(MAKE_DIRECTORY ${THIRD_PARTY_DIR}/include/nlohmann)

if(EXISTS ${NLOHMANN_LOCAL_COPY})
    file(MD5 ${NLOHMANN_LOCAL_COPY} NLOHMANN_HASH)
    if(NOT ${NLOHMANN_HASH} STREQUAL ${NLOHMANN_MD5_EXPECTED})
        message(
            FATAL_ERROR
            "nlohmann/${NLOHMANN_FILENAME} MD5 hash match error : ${NLOHMANN_FILENAME} (expected: ${NLOHMANN_MD5_EXPECTED} actual:${NLOHMANN_HASH})"
            )
    else()
        message(STATUS "${NLOHMANN_FILENAME} found in local.")
    endif()
else()
    message(STATUS "${NLOHMANN_FILENAME} not found in local. Downloading from github")
    file(DOWNLOAD
         ${NLOHMANN_GITHUB_URL}
         ${NLOHMANN_LOCAL_COPY}
         EXPECTED_MD5 ${NLOHMANN_MD5_EXPECTED})
endif()
file(COPY ${NLOHMANN_LOCAL_COPY} DESTINATION ${THIRD_PARTY_DIR}/include/nlohmann/)


