import { Component } from '@angular/core';

import { Product, products } from '../products';
import { RentService } from '../rent-service.service';

@Component({
  selector: 'app-product-list',
  templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent {
  products = products;

  constructor(private rentService: RentService){}

  share(product: Product) {
    this.rentService.addToBasket(product);
  }
}


/*
Copyright Google LLC. All Rights Reserved.
Use of this source code is governed by an MIT-style license that
can be found in the LICENSE file at https://angular.io/license
*/