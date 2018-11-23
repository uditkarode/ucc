# UCC

#### This was built for the students of schools/colleges that still use TurboC++ and teach it's archaic code samples, and ask its students to use the same. In order to use this, you need a Linux/Unix based system that can run DosBox. You must have DosBox, wget and curl preinstalled on your system. It is not mandatory to run this script as a user with superuser privileges, but it is necessary for the user running the script to have access to the entirety of the required assets.

To get started, create a directory anywhere on your disk, which will be your workplace. Let's call it the **workspace**. Add the *BIN* folder from this repository into your *workspace*. Also, inside the workspace, create four directories : 

- builds/ (this will contain the built EXE files)
- sources/ (this will contain the C/CPP source code)
- logs/ (this will contain the build and DosBox logs)
- files/ (this will contain the files created through C/C++ using filestreams)

Now, set the complete location of the *workspace*, as such:

```bash
ucc --workspace /Users/udit/myProjects
```

##### These commands below will do the heavylifting for you. You can copy and paste them to your terminal directly. After executing them, your workspace will be ~/UCCRoot :

```bash
sudo -s
cd /tmp && git clone https://github.com/uditkarode/ucc.git
mkdir ~/UCCRoot && cd ~/UCCRoot
mkdir builds logs sources files
cp -r  /tmp/ucc/BIN .
mv /tmp/ucc/ucc /bin/ucc && chmod +x /bin/ucc
rm -r /tmp/ucc
ucc --workspace ~/UCCRoot 
;
```

For instructions on usage of the script, use `ucc --help`

In the words of Bob the Builder:
> Happy Building!
