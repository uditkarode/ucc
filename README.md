# UCC

##### This was built for the students of schools/colleges that still use TurboC++ and teach it's archaic code samples, and ask its students to use the same. In order to use this, you need a Linux/Unix based system that can run DosBox. You must have DosBox, wget and curl preinstalled on your system. It is not mandatory to run this script as a user with superuser privileges, but it is necessary for the user running the script to have access to the entirety of the required assets.

#### Common Instructions:
*EVERY* valid UCC Workspace will contain these folders:
- `builds/` (this will contain the built EXE files)
- `sources/` (this will contain the C/CPP source code)
- `logs/` (this will contain the build and DosBox logs)
- `files/` (this will contain the files created through C/C++ using filestreams)
- `headers/` (this will contain your custom header files)

#### WINDOWS:
Since most of Windows users do not have git, I zipped the files of the `windows` branch and added it to this repo.

To install UCC for Windows, download https://uditkarode.github.io/ucc/ucc-windows.zip.

Wherever you extract this will be your workspace.

After extraction, **you must run** `UCC-INIT.bat`. The file will set up the directory and automatically remove itself.

You can now use `UCC-BUILD.bat`, `UCC-RUN.bat`, or `UCC-BUILD-RUN.bat` to compile, run, or compile and seamlessly run respectively.

If you prefer direct command line usage, you can change directory to the assets folder and use ucc this way:
```bash
bash ucc --build abc.cpp
bash ucc --run abc.cpp.EXE

--OR--

bash ucc -br abc.cpp
```

After executing UCC-INIT, you will have the five directories. You know what to do next.

#### POSIX:

###### MANUAL METHOD:
To get started, create a directory anywhere on your disk, which will be your workplace. Let's call it the **workspace**. Add the *BIN* folder from this repository into your *workspace*. Also, inside the workspace, create the five directories mentioned above.

Now, set the complete location of the *workspace*, as such:

```bash
ucc --workspace /Users/udit/myProjects
```
###### SCRIPT METHOD:

##### These commands below will do the heavylifting for you. You can copy and paste them to your terminal directly. Input 'yes' if asked. After executing them, your workspace will be ~/UCCRoot :

```bash
cd ~
git clone https://github.com/uditkarode/ucc.git/
sudo mv ucc/ucc /bin/ucc
mkdir UCCRoot && cd UCCRoot
mv ~/ucc/BIN .
mkdir builds sources logs files headers
rm -rf ~/ucc
ucc --workspace .
```

After setting up UCC, you can compile and run your programs with a command as simple as `ucc -br program.cpp`!

For instructions on usage of the script, use `ucc --help`

In the words of Bob the Builder:
> Happy Building!
