# Clear Memory DevTools for GNU/Linux OS

<h4>Program to free memory usage</h4>

This starting coding for this program was catched from internet and once I use it from a long, long time unfortunely I don't remember the source where I found it.

It was adapted to be executed on Linux Debian distribuition and it works from 6.0 or higher.

Some initial enhancements was did few days ago until today. There are also some planned improvements to be coded days ahead.

<h3>Todo list:</h3>

* Create a progress bar for task **dropping memory cache**;

* In cases when the task drop memory cache takes more than 2 minutes, call the program a second time to work in parallel with the first execution;

* Create a memnory listener to avoid starvation. When memory stays closer to its limit the operatiog system will show one dialog message asking for permission to call the program;

* In some situations the operating system goes to starvation not only because of memory usage but also in reason of processor cores are being fully allocated. For this scenario we need to think in some solution;

<h3>How to Use:</h3>

* Download the program or clone the branch to you computer;

* Save it in your desired directory, I suggest /opt/devtools

* Set the program to be execute using the command: **sudo chmod +x clear_memory.sh**;

* To execute the program manually use this command: **sudo <path-to-program>/clear_memory.sh**;

* An alternative to use it is make a symbolic link into **/usr/bin**;

* You can make it running these commands: **cd /usr/bin && sudo ln -s /path-to-program/clear_memory.sh clear_memory**

<h1>MIT License</h1>

<h4>Copyright (c) 2021 SANDRO REGIS CARDOSO | SOFTWARE ENGINEER</h4>

<h4>Contact: src.softwareengineer@gmail.com</h4>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.