function toggle(key) {
  var element = document.getElementById(key)
  if (element.style.display == 'block') {
    element.style.display = 'none'
  } else {
    element.style.display = 'block'
  }
}

function filterAlumni(positions, buttonEl) {
  document.querySelectorAll('#alumni-filter-buttons .filter-btn').forEach(button => {
    button.classList.remove('active');
  });
  buttonEl.classList.add('active');

  const positionsToShow = Array.isArray(positions) ? positions : [positions];

  document.querySelectorAll('#alumni-list .alumni-member').forEach(member => {
    const memberPosition = member.dataset.position;
    const shouldShow = positionsToShow.includes(memberPosition);
    member.style.display = shouldShow ? 'block' : 'none';
  });
}
