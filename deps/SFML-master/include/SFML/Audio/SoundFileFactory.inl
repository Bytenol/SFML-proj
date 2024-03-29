////////////////////////////////////////////////////////////
//
// SFML - Simple and Fast Multimedia Library
// Copyright (C) 2007-2024 Laurent Gomila (laurent@sfml-dev.org)
//
// This software is provided 'as-is', without any express or implied warranty.
// In no event will the authors be held liable for any damages arising from the use of this software.
//
// Permission is granted to anyone to use this software for any purpose,
// including commercial applications, and to alter it and redistribute it freely,
// subject to the following restrictions:
//
// 1. The origin of this software must not be misrepresented;
//    you must not claim that you wrote the original software.
//    If you use this software in a product, an acknowledgment
//    in the product documentation would be appreciated but is not required.
//
// 2. Altered source versions must be plainly marked as such,
//    and must not be misrepresented as being the original software.
//
// 3. This notice may not be removed or altered from any source distribution.
//
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// Headers
////////////////////////////////////////////////////////////


namespace sf
{
namespace priv
{
template <typename T>
std::unique_ptr<SoundFileReader> createReader()
{
    return std::make_unique<T>();
}
template <typename T>
std::unique_ptr<SoundFileWriter> createWriter()
{
    return std::make_unique<T>();
}
} // namespace priv

////////////////////////////////////////////////////////////
template <typename T>
void SoundFileFactory::registerReader()
{
    // Make sure the same class won't be registered twice
    unregisterReader<T>();

    // Create a new factory with the functions provided by the class
    const ReaderFactory factory{&T::check, &priv::createReader<T>};

    // Add it
    s_readers.push_back(factory);
}


////////////////////////////////////////////////////////////
template <typename T>
void SoundFileFactory::unregisterReader()
{
    // Remove the instance(s) of the reader from the array of factories
    s_readers.erase(std::remove_if(s_readers.begin(),
                                   s_readers.end(),
                                   [](const ReaderFactory& readerFactory)
                                   { return readerFactory.create == &priv::createReader<T>; }),
                    s_readers.end());
}

////////////////////////////////////////////////////////////
template <typename T>
void SoundFileFactory::registerWriter()
{
    // Make sure the same class won't be registered twice
    unregisterWriter<T>();

    // Create a new factory with the functions provided by the class
    const WriterFactory factory{&T::check, &priv::createWriter<T>};

    // Add it
    s_writers.push_back(factory);
}


////////////////////////////////////////////////////////////
template <typename T>
void SoundFileFactory::unregisterWriter()
{
    // Remove the instance(s) of the writer from the array of factories
    s_writers.erase(std::remove_if(s_writers.begin(),
                                   s_writers.end(),
                                   [](const WriterFactory& writerFactory)
                                   { return writerFactory.create == &priv::createWriter<T>; }),
                    s_writers.end());
}

} // namespace sf
