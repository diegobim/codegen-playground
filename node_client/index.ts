import { PetApi } from 'pet-store-api-client';

const api = new PetApi();

api
  .findPetsByStatus('available')
  .then((response) => console.log(response.data));
