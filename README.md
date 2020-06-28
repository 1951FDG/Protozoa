# Protozoa

**Protozoa** is a sample application, built with AppDNA, capable of
recompiling itself.

### How it Works

AppDNA is a small shell script which efficiently packages a Mac OS X
application's source code into the application itself.

  - The AppDNA script copies the project directory, excluding resources,
    into Content/Source of the application's bundle
  - The embedded Xcode project file is then modified to find resources
    in Content/Resources
  - The resulting embedded project directory is fully functional,
    allowing the code and resources to be examined and modified
  - When the embedded project is built, the script copies the results
    back to the outer wrapping application

**note:** The application is self-compiling only if a Release build is
performed.

### Installation

1.  Copy AppDNA.sh into the root of your project directory
2.  Open your project with **Xcode.app**
3.  In the application's target, add a new Run Script Build Phase
4.  In the Run Script Build Phase Info, type **bash AppDNA.sh**
5.  Drag all files with extension .xib from Resources to Other Sources
6.  Perform a Release build

**note:** The AppDNA script only runs during Release builds.

### Acknowledgement

This material is based upon work by [Chuck
Houpt](http://habilis.net/appdna/).
