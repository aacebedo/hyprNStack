# compile with HYPRLAND_HEADERS=<path_to_hl> make all
# make sure that the path above is to the root hl repo directory, NOT src/
# and that you have ran `make protocols` in the hl dir.

all:
	g++ -shared -Wall -fPIC --no-gnu-unique main.cpp nstackLayout.cpp -o nstackLayoutPlugin.so -g -I "/usr/include/pixman-1" -I "/usr/include/libdrm" -I "${HYPRLAND_HEADERS}" -std=c++23
clean:
	rm ./nstackLayoutPlugin.so
