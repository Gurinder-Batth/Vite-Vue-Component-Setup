appName=$1
if [ ! -d "./src/app/$appName" ];
then
echo "\n🏓 Going to create ${appName} App."
appNameLower=$(echo "$appName" | tr '[:upper:]' '[:lower:]')
mkdir -p ./src/app/$1
touch  "./src/app/$appName/$appNameLower.js"
touch  "./src/app/$appName/$appName.vue"
jsTemplateContent=$(cat ./.app/template/app.js)
VueTemplateContent=$(cat ./.app/template/TemplateApp.vue)
MainAppContent=$(cat ./src/App.vue)
ViteConfigContent=$(cat ./vite.config.js)
BuildHTMLContent=$(cat ./.app/build/index.html)

echo "\nDefault content loaded 🚀"

jsTemplateContent="${jsTemplateContent//TemplateName/$appName}"
jsTemplateContent="${jsTemplateContent//#template-name-app/#$appNameLower-app}"

VueTemplateContent="${VueTemplateContent//template-app/$appNameLower-app}"
VueTemplateContent="${VueTemplateContent//Template APP/Welcome! $appName APP 🚀}"

import_string=$(echo "import $appName from '@/app/$appName/$appName.vue'\n//Import auto here.")
MainAppContent="${MainAppContent//\/\/Import auto here./$import_string}"


component_string=$(echo "  <$appName/>\n<!-- Import auto component here. -->")
MainAppContent="${MainAppContent//<!-- Import auto component here. -->/$component_string}"


vite_config_str=$(echo "'$appNameLower': path.resolve(__dirname,'./src/app/${appName}/${appNameLower}.js'), \n            //Import auto here.")
ViteConfigContent="${ViteConfigContent//\/\/Import auto here./$vite_config_str}"

build_str=$(echo "\n\n    <div id='${appNameLower}-app' class='app'></div>\n    <script type='module' src='./assets/${appNameLower}.js'></script>\n\n    <!-- Auto update build file. -->")
BuildHTMLContent="${BuildHTMLContent//<!-- Auto update build file. -->/$build_str}"


echo "\nContent Building...🚀"

echo "$jsTemplateContent" > "./src/app/$appName/$appNameLower.js"
echo "$VueTemplateContent" > "./src/app/$appName/$appName.vue"
echo "$MainAppContent" > "./src/App.vue"
echo "$ViteConfigContent" > "./vite.config.js"
echo "$BuildHTMLContent" > "./.app/build/index.html"

echo "\n🎉🎊🎈🥳 ${appName} App creation mission successful 🚀. \n"

else
 echo "\n😵 Oops! App ${appName} already exists. \n"
fi