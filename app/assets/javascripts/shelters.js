
// homey = HTTParty.get('https://api.nytimes.com/svc/search/v2/articlesearch.json?&api-key=62a97a6fc47346ecba1eae7c69ca64f4')
// .then((data) => {
    
//     let home = data.response.docs
//     // home.array.forEach(function(element){
//         // console.log(home);
//     })
// // })
// //this api list all the shelters in nyc
// fetch('https://data.cityofnewyork.us/api/views/5t4n-d72c/rows.json?accessType=DOWNLOAD')
// .then((shelter) => shelter.json())
// .then((data) => {
//     let shelters = data.meta.view.columns
//     // console.log(shelters)
//     //   shelters.forEach((element) => {
//     // const bed = document.getElementById("feather")
//     // console.log(element)})  
//     // element(shelters)
//       })

   
// // })

// // this api gets all the offerings that people have given to shelters
// fetch('https://data.cityofnewyork.us/api/views/bmxf-3rd4/rows.json?accessType=DOWNLOAD')
// .then((giving) => giving.json())
// .then((data) => {
//     let contribution = data.meta.view.columns
//     console.log(contribution)
//         contribution.forEach(money => {
//             //     let div = document.getElementById("helping");
//             //     let div2 = document.createElement("div");
//             //     div2.innerHTML = `
//             //     <p> ${contribution.name}</p>
//             //  `
//             //  div.appendChild(div2)
//              console.log(money)
//             })
           
// })
// //this api gets all the homeless youth in new york
// fetch('https://data.cityofnewyork.us/api/views/ujsc-un6m/rows.json?accessType=DOWNLOAD')
// .then((youth) => youth.json())
// .then((data) =>{
//     let runaway = data.meta.view.columns
//     // runaway.forEach(item => {
//             // console.log(runaway)
//     })
// // })