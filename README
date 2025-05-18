# Quark in Docker / Quark en Docker

Credits to https://github.com/XorTroll/Goldleaf

## English

### X11 Configuration
#### Mac

Install XQuartz: https://www.xquartz.org

Configure XQuartz properly:
1. Open XQuartz (find it in your applications and run it).
2. Go to XQuartz > Preferences > Security and make sure the option is enabled: “Allow connections from network clients”
3. Close and reopen XQuartz after changing the preference.

Configure your docker-compose:
On Mac, the variable should be DISPLAY=host.docker.internal:0

If for some reason XQuartz does not show the graphical interface:

Close XQuartz.
Run in your terminal:
   ```sh
   xhost - 127.0.0.1
   xhost + 127.0.0.1
   ```
Open XQuartz again.

# How to use Quark in Docker

## Mac
- No USB access.
- Install XQuartz and run: `xhost + 127.0.0.1`
- Mount external folders from `/Volumes/`.

## Linux (Ubuntu, SteamOS)
- You can use USB and mount folders.
- Run: `xhost +local:docker` before starting the container.

## Windows
- No USB access.
- Install Xming or VcXsrv for X11.
- Mount folders using paths like `C:/...`.

# What about USB and external storage usage?
## Linux (Ubuntu, SteamOS):
- You can use USB and mount any folder.
- X11 access is direct (DISPLAY=$DISPLAY).
## Mac:
- No USB access, but you can share folders.
- X11 with XQuartz and host.docker.internal:0.
## Windows:
- No USB access, but you can share folders.
- For X11, you need an X server (like Xming or VcXsrv) and use host.docker.internal:0.

## Español

### X11 Configuration
#### Mac

Instalar XQuartz  https://www.xquartz.org

Configura XQuartz correctamente:
1. Abre XQuartz (búscalo en tus aplicaciones y ejecútalo).
2. Ve a XQuartz > Preferences > Security y asegúrate de que esté activada la opción: “Allow connections from network clients”
3. Cierra y vuelve a abrir XQuartz después de cambiar la preferencia.

Configura tu docker-compose:
En Mac, la variable debe ser DISPLAY=host.docker.internal:0

Si por alguna razon no funciona XQuartz mostrando la interfaz gráfica:

Cierra XQuartz.
Ejecuta en tu terminal:
   ```sh
   xhost - 127.0.0.1
   xhost + 127.0.0.1
   ```
Abre XQuartz de nuevo.


# Cómo usar Quark en Docker

## Mac
- No hay acceso a USB.
- Instala XQuartz y ejecuta: `xhost + 127.0.0.1`
- Monta carpetas externas desde `/Volumes/`.

## Linux (Ubuntu, SteamOS)
- Puedes usar USB y montar carpetas.
- Ejecuta: `xhost +local:docker` antes de levantar el contenedor.

## Windows
- No hay acceso a USB.
- Instala Xming o VcXsrv para X11.
- Monta carpetas usando rutas tipo `C:/...`.

# Y ¿Qué pasa con el uso del puerto usb y almacenaiento externos?
## Linux (Ubuntu, SteamOS):
- Puedes usar USB y montar cualquier carpeta.
- El acceso a X11 es directo (DISPLAY=$DISPLAY).
## Mac:
- No hay acceso a USB, pero puedes compartir carpetas.
- X11 con XQuartz y host.docker.internal:0.
## Windows:
- No hay acceso a USB, pero puedes compartir carpetas.
- Para X11, necesitas un servidor X (como Xming o VcXsrv) y usar host.docker.internal:0.
