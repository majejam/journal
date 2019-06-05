const project_container = document.querySelector('.articles__container')
const projects = document.querySelectorAll('.article__container')
const scroll__bar = document.querySelector('.scroll__bar')



/**
 * Sizes
 */
const sizes = {}
sizes.width = window.innerWidth
sizes.height = window.innerHeight

// Scroll bar height 
let ratio = project_container.offsetHeight/sizes.height
scroll__bar.style.height = `${100/(ratio)}%`
/**
 * Resize
 */
window.addEventListener('resize', () =>
{
    // Update sizes
    sizes.width = window.innerWidth
    sizes.height = window.innerHeight

    // Scroll bar height 
    ratio = project_container.offsetHeight/sizes.height
    scroll__bar.style.height = `${100/(ratio)}%`

    //reset last 
    scroll__bar.style.transform = `translateY(${-((position_container/(project_container.offsetHeight - sizes.height)) * (sizes.height - (sizes.height * ((100/ratio)/100))))}px)`
    project_container.style.transform = `translateY(0px)`
})


let position_container = 0
let isScrolling
let scrollspeed = 0
project_container.addEventListener( 'wheel', onMouseWheel, false );
project_container.addEventListener( 'scroll', onMouseWheel, false );
function onMouseWheel( event ) {
    //event.preventDefault();
    //posc += event.deltaY * 0.003;

    scrollspeed = event.deltaY 
    position_container = position_container - scrollspeed

    if(position_container < 0 ){

    }
    else{
        position_container = 0
        scrollspeed = 0
    }
    if(position_container > (-project_container.offsetHeight + sizes.height)){

    }
    else{
        position_container = (-project_container.offsetHeight + sizes.height)
        scrollspeed = 0
    }
    for (let index = 0; index < projects.length; index++) {
        projects[index].style.transform = `matrix(1, ${scrollspeed/2000}, 0, ${1 - Math.abs(scrollspeed/2000)}, 0, 0)`
    }
    scroll__bar.style.transform = `translateY(${-((position_container/(project_container.offsetHeight - sizes.height)) * (sizes.height - (sizes.height * ((100/ratio)/100))))}px)`
    project_container.style.transform = `translateY(${position_container}px)`
    window.clearTimeout( isScrolling );

	// Set a timeout to run after scrolling ends
	isScrolling = setTimeout(function() {

		// Run the callback
    
        for (let index = 0; index < projects.length; index++) {
            projects[index].style.transform = `matrix(1, 0, 0, 1, 0, 0)`
        }

	}, 66);
    
}

//click

for (let index = 0; index < projects.length; index++) {
    projects[index].addEventListener('click',()=>{
        console.log(projects[index].dataset.slug);
        window.location.replace(window.location.href + "article/" + projects[index].dataset.slug);
    })
    
}