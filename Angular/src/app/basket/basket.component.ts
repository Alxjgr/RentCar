import { Component } from '@angular/core';
import {OrderItem, RentService} from '../rent-service.service';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-basket',
  templateUrl: './basket.component.html',
  styleUrls: ['./basket.component.css']
})
export class BasketComponent {
    

    get orderItems(): OrderItem[] {
      return this.rentService.orderItems;
    }

    constructor(private rentService: RentService){} 
    requeteServeur(){
      console.log('calling requeteServeur');
      this.rentService.send_basket();

    }

  }

