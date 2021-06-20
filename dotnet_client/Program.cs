using System;
using PetStore.Api.Client.Api;

var api = new PetApi();

var pets = await api.FindPetsByStatusAsync("available");

pets.ForEach(Console.WriteLine);
