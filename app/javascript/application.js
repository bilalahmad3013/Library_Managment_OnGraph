// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require jquery_ujs
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener('click', handleLike);

function handleLike(e) {
      
  if (e.target.classList.contains('submit')) {    
    var bookId = e.target.getAttribute('id');      

    var data = {
        book_id: bookId       
      };

    var xhr = new XMLHttpRequest();
    xhr.open('POST', '/send_email' , true);
    xhr.setRequestHeader('Content-Type', 'application/json');

    xhr.onload = function() {
      if (xhr.status === 200) {
        var responseData = JSON.parse(xhr.responseText);
         if(responseData.msg==="true"){  
            var flashDiv = document.getElementById('flash-messages'); 
            flashDiv.style.display='block'    
            e.target.innerText = "Pending"
            e.target.className="dontdoanything"           
         }
      }
    };

    xhr.send(JSON.stringify(data));
  }
}

