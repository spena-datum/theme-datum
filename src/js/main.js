AUI().ready(

	/*
	This function gets loaded when all the HTML, not including the portlets, is
	loaded.
	*/

	function() {
	}
);

Liferay.Portlet.ready(

	/*
	This function gets loaded after each and every portlet on the page.

	portletId: the current portlet's id
	node: the Alloy Node object of the current portlet
	*/

	function(portletId, node) {
	}
);

Liferay.on(
	'allPortletsReady',

	/*
	This function gets loaded when everything, including the portlets, is on
	the page.
	*/

	function() {
	}
);


//Script para validad boton
      let aEventos = document.querySelector(".eventos");
            // console.log(aEventos);

            for (let index = 0; index < aEventos.childElementCount; index++) {
                const aEvento = aEventos.children[index].children[0].children[0].children[1].children[3].children[1].children[0].children[0].children[0].children[0];
                

                if(aEvento.innerText == 'Zoom'){
                      console.log("Soy webinar");
                      const buttonWebinar = aEventos.children[index].children[0].children[1].children[0].children[0]
                      console.log(buttonWebinar.href)

                      buttonWebinar.href="/registro-webinar-evento";


                  }
                 else{
                    //console.log("Soy presencial");
                    
                    
                    // const buttonWebinar = aEventos.children[index]
                    //   console.log(buttonWebinar)
                }
            }