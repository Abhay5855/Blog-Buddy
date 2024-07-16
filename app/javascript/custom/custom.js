import * as FilePond from 'filepond';

    // Get a reference to the file input element
    const inputElement = document.querySelector(".filepond");

    // Create a FilePond instance
const pond = FilePond.create(inputElement, {

    credits: {},
    storeAsFile : true
}
        
    );
