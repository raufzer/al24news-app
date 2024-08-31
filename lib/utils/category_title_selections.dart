String categoryTitle (category) {
  switch (category) {
    case 'world':
      return 'All';
    case 'health':
      return 'Health';
    case 'science':
      return 'Science';
    case 'sports':
      return 'Sports';
    default:
      return 'All';
  }
}