using System;
using PetStore.Api.Client.Model;
using PetStore.Api.Client.Api;
using System.Collections.Generic;

var api = new PetApi();

var pets = await api.FindPetsByStatusAsync("available");

(pets ?? new List<Pet>()).ForEach(Console.WriteLine);
