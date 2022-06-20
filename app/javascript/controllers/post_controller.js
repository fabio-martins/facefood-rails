import {Controller} from '@hotwired/stimulus'

export default class extends Controller{
    static targets = ['preview']
    
    previewImage(event){
        var file = event.target.files[0];

        if(file.type.match('image.*')) {
            var image = window.URL.createObjectURL(file);
            this.previewTarget.src = image;
        }
    }
}