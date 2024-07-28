const modal = document.querySelector('#modal');
const openModalButton = document.querySelector('#open_modal');
const closeModalButton = document.querySelector('#close_modal');

openModalButton.addEventListener('click', () => {
  modal.classList.remove('hidden');
});

closeModalButton.addEventListener('click', () => {
  modal.classList.add('hidden');
});