import { LightningElement, api, track } from "lwc";

export default class Modal extends LightningElement {
    
    @api
    set header(value) {
        this.hasHeaderString = (value !== "");
        this.headerPrivate = value;
    }
    
    get header() {
        return this.headerPrivate;
    }    

    @api 
    show() {
        this.showModal = true;
    }

    @api 
    hide() {
        this.showModal = false;
    }

    @track 
    showModal = false;

    @track 
    hasHeaderString = false;

    headerPrivate;

    notifyParentOnClose() {
        const closedialog = new CustomEvent("closedialog");
        this.dispatchEvent(closedialog);
        this.hide();
    }

    handleSlotTaglineChange() {
        const paragraphElement = this.template.querySelector("p");
        paragraphElement.classList.remove("modal-hidden");
    }

    handleSlotFooterChange() {
        const footerElement = this.template.querySelector("footer");
        if(footerElement){
            footerElement.classList.remove("modal-hidden");
        }
    }
}
