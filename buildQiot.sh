cd /home/abattagl/git/qiot/datahub/qiot-datahub-localization/
chmod +x build.sh
./build.sh
cd /home/abattagl/git/qiot/datahub/qiot-datahub-station/
chmod +x build.sh
./build.sh
cd /home/abattagl/git/qiot/datahub/qiot-datahub-registration/
chmod +x build.sh
./build.sh
cd /home/abattagl/git/qiot/datahub/qiot-datahub-collector/
chmod +x build*.sh
./buildgas.sh
./buildpollution.sh
cd /home/abattagl/git/qiot/datahub/qiot-datahub-storer/
chmod +x build*.sh
./buildgas.jvm.sh
./buildpollution.jvm.sh
#cd /home/abattagl/git/qiot/datahub/qiot-datahub-importer/
#chmod +x build.sh
#./build.sh
#cd /home/abattagl/git/qiot/edge/qiot-sensors-emulator/
#chmod +x build.sh
#./build.sh
#cd /home/abattagl/git/qiot/edge/qiot-service/
#chmod +x build.sh
#./build.sh

