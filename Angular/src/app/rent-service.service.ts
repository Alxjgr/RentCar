import { Injectable } from '@angular/core';
import {Product} from './products'
import { HttpClient } from '@angular/common/http';

export interface OrderItem {
  product: Product;
  quantity: number;
}

@Injectable({
  providedIn: 'root'
})
export class RentService {
  orderItems: OrderItem[] =[];

  constructor(private http: HttpClient) { 
    
  }

  addToBasket(product : Product)
  {
    console.log('adding product to basket',product)
    this.orderItems.push({product, quantity: 1});

  }

  send_basket(){
    this.http.post('/api/sendOrder',{test: 'texte' }).subscribe()
  }
}

