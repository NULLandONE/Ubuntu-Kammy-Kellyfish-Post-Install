import os, time, sys, itertools, threading
import platform as pf
try:
    import easygui as eg
    mdepent = None
except:
    mdepent = "easygui"

platform = pf.system()

print("Welcome to the Post-Installation process for Ubuntu Kammy.")
time.sleep(1)
try:
    input("Press Ctrl-C to quit and press ENTER to continue.")
except KeyboardInterrupt:
    print("Aborting...")
    time.sleep(0.2)
    exit()

print("We're happy to see you continue.")
time.sleep(1)
print("Now, let's start.")
time.sleep(0.5)
print("We'll launch a GUI for you.")
time.sleep(0.9)
print("Follow the Instructions")
if mdepent == None:
    pass
else:
    print("Ohh... looks like you have a missing dependencies")
    time.sleep(0.9)
    print("I can fix this")
    time.sleep(0.5)
    if platform == "Windows":
        print("THIS SCRIPT IS NOT INTENDED FOR WINDOWS SYSTEMS")
        exit(23415543)
    
    if platform == "linux" or platform == "linux2" or platform == "linux3":
        os.system("sudo apt-get update && sudo apt-get install python3-pip python3-easygui")
        
    print("Ok. Its now installed. Please restart this program to take effect.")
    exit()

bg = eg.buttonbox(msg="Select your desired background", title="Post-Install", choices=["OceanSun", "Forrest", "Grayed", "Submerse"])
done = False
def animate():
    for c in itertools.cycle(["⢿  ", "⣻  ", "⣽  ", "⣾  ", "⣷  ", "⣯  ", "⣟  ", "⡿  "]):
        if done:
            break
        sys.stdout.write('\rloading ' + c)
        sys.stdout.flush()
        time.sleep(0.1)
    sys.stdout.write('\rDone!     ')

t = threading.Thread(target=animate)
t.start()

os.system("cd wallpapers && sudo cp *.png /usr/share/backgrounds/")
os.system("gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/JellyJam-" + bg + ".png'")
time.sleep(3.5)
done = True

os.system("sudo apt install libglib2.0-dev-bin -y")
bcg = eg.buttonbox(msg="Background, color or gradient", choices=["background", "color", "gradient"], title="Post-Install")
if bcg == "background":
    bg = eg.fileopenbox(title="Background path (give a vaild photo or else it may break the system", default="/usr/share/background/*.*")
    done = False
    t = threading.Thread(target=animate)
    t.start()

    os.system("cd scripts && chmod +x gdmThemer.sh && sudo ./gdmThemer.sh --image " + bg)
    time.sleep(3.5)
    done = True

elif bcg == "gradient":
    hex1 = eg.enterbox(msg="Type the desired 1st hexcode:")
    hex2 = eg.enterbox(msg="Type the desired 2nd hexcode:")
    vorh = eg.buttonbox(msg="Verical or Horizonal", choices=["Verical", "Horizontal"])
    os.system("cd scripts && chmod +x gdmThemer.sh && sudo ./gdmThemer.sh --gradient " + vorh + " " + hex1 + " " + hex2)

elif bcg == "color":
    hexc = eg.enterbox(msg="Type the desired hexcode:")
    os.system("cd scripts && chmod +x gdmThemer.sh && sudo ./gdmThemer.sh --color " + hexc)

done = False
def animate2():
    for c in itertools.cycle(["⢿  ", "⣻  ", "⣽  ", "⣾  ", "⣷  ", "⣯  ", "⣟  ", "⡿  "]):
        if done:
            break
        sys.stdout.write('\rloading ' + c)
        sys.stdout.flush()
        time.sleep(0.1)
       
t = threading.Thread(target=animate2)
t.start()

os.system("sudo rm -rf /usr/share/plymouth/ubuntu-logo.png && sudo rm -rf /usr/share/plymouth/themes/spinner/watermark.png")
os.system("cd bootlogo && sudo cp ubuntu-logo.png /usr/share/plymouth/ && sudo cp ubuntu-logo.png /usr/share/plymouth/themes/spinner/watermark.png")
time.sleep(3.5)
done = True

tadd = input("Apps/Programs to be added: ")
tdelete = input("Apps/Programs to be removed: ")
os.system("sudo apt install -y " + tadd)
os.system("sudo apt remove -y " + tdelete)

print("And I'm done with collecting input!")
sleep(0.7)
os.system("sudo add-apt-repository universe && sudo add-apt-repository multiverse")
os.system("sudo apt install ubuntu-restricted-extras -y")
os.system("gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize' ")
os.system("sudo apt install libfuse2 -y")
input("Now press enter to restart your pc . . .")
os.system("sudo reboot")
