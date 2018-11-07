# UCC

#### This was built for the students of schools/colleges that still use TurboC++ and it's archaic code samples, and asks them to do the same. In order to use this, you need a Linux/Unix based system, or a Windows 10 installation with the Windows subsystem for Linux installed. You must have DosBox preinstalled on your system. It is not mandatory to run this script as a user with superuser privileges, but it is necessary for the user running the script to have access to the entirety of the required assets.

To get started, create a directory anywhere on your disk, which will be your workplace. Let's call it the **root folder**. Add the *BIN* folder from this repository into your *root folder*. Also, inside the root folder, create three directories : 

- builds/ (this will contain the built EXE files)
- sources/ (this will contain the C/CPP source code)
- logs/ (this will contain the build and DosBox logs)

Now, enter the complete location of the *root folder* on your filesystem in the file *ucc*, as such:

```bash
#!CHANGE THIS TO YOUR ROOT FOLDER!
root=/Users/udit/Class12File
```

##### Get started now by running these commands:
```bash
sudo -s
cd /tmp && git clone https://github.com/uditkarode/ucc.git
mkdir ~/UCCRoot && cd ~/UCCRoot
mkdir builds logs sources
cp -r  /tmp/ucc/BIN .
mv /tmp/ucc/ucc /bin/ucc && chmod +x /bin/ucc
rm -r /tmp/ucc
echo "Change the root variable in the file /bin/ucc to ~/UCCRoot, otherwise this script will NOT work."
```

Here is the script command usage:

-b/--build <filename> : Builds the file, and places a DOS executable in builds/.

-r/--run <filename> : Runs the filename (if present) from builds/.

NOTE: Filenames longer than 8 characters should have the first 6 characters and ~1 attached. If the filename is longer than 8 characters but there is a dot(.) before the eighth character, place a '~1' after the filename before the dot.

In the words of Bob the Builder:
> Happy Building!
