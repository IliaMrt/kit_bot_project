if [ -d kit_bot ]
then
    echo Updating Local Repo kit_bot
    cd kit_bot
    git pull origin master
    npm i
    cd ..
    echo Local Repo has been updated
    cp ./secret1/main.config.json kit_bot/src/config.files
else
    echo Downloading Bot...
    git clone https://github.com/IliaMrt/kit_bot

    cd kit_bot
    npm i

    cd ..
    echo Bot downloaded.
    cp ./secret1/main.config.json kit_bot/src/config.files
fi

if [ -d kit_feedback_collection_for_bot ]
then
    echo Updating Local Repo kit_feedback_collection_for_bot
    cd kit_feedback_collection_for_bot
    git pull origin master
    npm i
    cd ..
    echo Local Repo has been updated
    cp ./secret2/main.config.json kit_feedback_collection_for_bot/config.files
else
    echo Downloading Feedback...
    git clone https://github.com/IliaMrt/kit_feedback_collection_for_bot

    cd kit_feedback_collection_for_bot
    npm i

    cd ..
    echo Feedback downloaded.
    cp ./secret2/main.config.json kit_feedback_collection_for_bot/config.files

fi

