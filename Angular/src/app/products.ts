export interface Product {
  id: number;
  name: string;
  price: number;
  description: string;
  imageUrl ?:string;
  nbplaces?: number;
}

export const products: Product[]= [
  {
    id: 1,
    name: 'Renault Clio',
    price: 30,
    description: 'Le véhicule comprend 2 sièges, et fonctionne sur boîte manuelle. Une location permet un voyage de 750km max, soit 750km par location.',
    imageUrl : 'https://images.caradisiac.com/logos/8/6/0/3/268603/S7-renault-clio-comment-le-prix-de-base-s-est-envole-en-deux-ans-192370.jpg',
    nbplaces : 2
  },
  {
    id: 2,
    name: 'Peugeot 208',
    price: 40,
    description: 'Le véhicule comprend 5 sièges, et fonctionne sur boîte manuelle. Une location permet un voyage de 750km max, soit 750km par location.',
    imageUrl: 'https://images.elite-auto.fr/visuel/PEUGEOT/peugeot_20e208gthb2b_angularfront.png',
    nbplaces: 5
    
  },
  {
    id: 3,
    name: 'Mercedes-Benz CLA',
    price: 80,
    description: 'Premium, le vehicule comprend 5 sièges et fonctionne sur boite automatique. Une location permet un voyage de 399km max, soit 399km par location.',
    imageUrl: 'https://cdn2.rcstatic.com/images/car_images/web/mercedes/cla_lrg.jpg',
    nbplaces: 5
  },

  {
    id: 4,
    name: 'Opel Mokka',
    price: 60,
    description: 'SUV, le vehicule comprend 5 sièges et fonctionne sur boite manuelle. Une location permet un voyage de de kilométrage illimité.',
    imageUrl: 'https://cdn2.rcstatic.com/images/car_images/web/opel/mokka_lrg.jpg',
    nbplaces: 5
  }
];


/*
Copyright Google LLC. All Rights Reserved.
Use of this source code is governed by an MIT-style license that
can be found in the LICENSE file at https://angular.io/license
*/