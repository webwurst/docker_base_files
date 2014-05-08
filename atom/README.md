


    $ sudo docker run -i -t -v $(pwd):/pwd webwurst/atom-build
    $ sudo chown $USER:$USER atom-build -R
    $ chmod +x atom-build/Atom/atom

    $ sudo ln -s /lib/x86_64-linux-gnu/libudev.so.1 /lib/x86_64-linux-gnu/libudev.so.0

Execute via:

    $ ./atom-build/Atom/atom

Or install the package like this:

    $ sudo dpg -i atom-build/atom-0.95.0-amd64.deb
    $ atom