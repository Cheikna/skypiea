import { Injectable } from '@angular/core';
import { ToastrService } from 'ngx-toastr';
import { ToastType } from '../enums/toastType.enum';

@Injectable({
  providedIn: 'root'
})
export class ToastService {

  constructor(private toastr: ToastrService) { }

  /**
   * 
   * @param toastType : the type of the toast (SUCCESS, WARNING, ERROR)
   * @param title : the title of the toast  
   * @param removeOld :
   *  true if we want to remove the old ones
   *  false : if we want to keep the old ones so that we can have a trace
   * @param message : the message to display (not mendatory)
   * @param timeout : the time during which the toast will be displayed
   */
  displayToast(toastType: ToastType, title: string, removeOld: boolean, message?: string, timeout?: number){
    timeout = (timeout) ? timeout : 5000;    
    message = (message) ? message : '';

    if(removeOld){
      this.toastr.clear();
    }

    switch(toastType){
      case ToastType.SUCCESS:{
        this.toastr.success(message, title, { timeOut: timeout});
        break;
      }
      case ToastType.WARNING:{
        this.toastr.warning(message, title, { timeOut: timeout });
        break;
      }
      case ToastType.ERROR:{
        this.toastr.error(message, title, { timeOut: timeout });
        break;
      }
    }
  }
}
