# heif-converter-image
heif-converter is a versatile command-line application, along with a Docker image, that offers an easy and efficient way to convert HEIC (and AVIF) images to other common formats like JPEG and PNG, and vice versa. It leverages the go-libheif module, a GoLang wrapper for the libheif library. This tool can be used as a standalone CLI application across various platforms including macOS, Linux, and Windows, or used via a Docker container, making it a flexible solution for all your HEIC image conversion needs.

## Installing dependencies
heif-converter relies on [libheif](https://github.com/strukturag/libheif), which must be installed on your system. To simplify the installation process, we've provided ready-to-use scripts for different operating systems::
- install-libheif.sh
- install-libheif-macos.sh
- install-libheif-windows.bat
           
*note: these scripts assume that the required tools (such as **git** and **brew** for macOS or **git** for Windows) are already installed on the system.*

## Using from docker
In case you find Pull [docker image](https://hub.docker.com/r/maestroerror/heif-converter):
```bash
docker pull maestroerror/heif-converter:latest
```
To run the converter and convert an image:

```bash

docker run --rm -v /path/to/your/files:/app/files maestroerror/heif-converter [heic|avif|jpeg|png] /app/files/input_file /app/files/output_file
```

*Note: replace /path/to/your/files with the path to the directory containing the images you want to convert. The converter will look for the input file in this directory and will also write the output file to this directory.*

## Usage
Just point to the executable (`./heif-converter`), add the current image format (`[heic|avif|jpeg|png]`) as the first argument and input / output files as the second and third arguments.
```bash
./heif-converter [heic|avif|jpeg|png] path/to/input_file.heic /path/to/output_file.png
```
*Note: It will detect output file format automatically based on the extension*         
App ships with 3 binary file in the bin directory. Choose by your platform:
- heif-converter-linux
- heif-converter-macos
- heif-converter-windows.exe

### Development
- build command `go build -o bin/heif-converter`

##### To Do
- Fix windows building
