
# Vite + Vue independent component setup.

1. Hi! This project ready to use setup of independent Vue compnent. 
2. Which helps us to make any section of the page in written in Vue.
3. We can use this project compnent in anywhere Like Wordpress, Laravel, Drupal, Django, Node.js Project etc.

# How to create independent App.

`  yarn create-app HelloWorld `    
#
# Documentation 
- Suppose If we hit `  yarn create-app HelloWorld ` 
- By using above command new Reusable component will be generate inside the `app/HelloWorld` folder.
- In this folder we will have two files. 

- `helloworld.js` file is the setup of vue mount point. 
- `HelloWorld.vue` file is a Vue default template component file. 

- Next this command automatically import this file `App.vue`.
- So when run `yarn dev` we can see the output of this component.
- Then this command register this component inside `vite.config.js` inside the build.
- So when we run `yarn build` we have sperate files for each app which created by `  yarn create-app HelloWorld `.
- Dist output files dir -> `./dist` folder where automatically modify `index.html` placed.
- This files contains following based on the numbers of app.
#
`    <link rel="stylesheet" href="./assets/welcome.css"> `

`<div id="helloworld-app" class="app"></div>`

` <script type='module' src="./assets/helloworld.js"></script> `

#

 - As you see we have three files. `style file`, `html target div` and `script file`.
- You can manage this manually as well.


## Demo

https://gurinder-batth.github.io/Vite-Vue-independent-component-setup-/dist/

## Here we can see how the index.html build file look.
https://github.com/Gurinder-Batth/Vite-Vue-Component-Setup/blob/main/dist/index.html

## Features

- Create new component app directly one command `yarn create-app HelloWorld`
- Vite + Vue Original Setup.
- Open Source code bash file for create-app.

## Deployment

To deploy this project just clone the code from github

```bash
git clone https://github.com/Gurinder-Batth/Vite-Vue-Component-Setup.git
```
```bash
yarn
```

```bash
yarn dev 
```


```bash
yarn build # This generate the independent app component. 
```

## Please if you want contribute then create PR for following urgent feature.

- Remove app using command line.
- Implement the vite build watch to test the build.


## Authors

- [@Gurinder-Batth](https://github.com/Gurinder-Batth/)


## License

[MIT](https://raw.githubusercontent.com/Gurinder-Batth/push-notification-alert-web/main/LICENSE)


