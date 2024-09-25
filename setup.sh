#!/bin/bash

cp ./ricaederim.sh ~/
cp ./painman.jpg ~/


chmod +x ~/ricaederim.sh


if ! grep -Fxq "~/ricaederim.sh" ~/.profile; then
    echo "bash ~/ricaederim.sh &" >> ~/.profile
    echo "ricaederim.sh path has been added to ~/.profile"
else
    echo "ricaederim.sh path is already in ~/.profile"
fi

source ~/.profile

# İşlemler tamamlandı
echo "Setup completed successfully."

