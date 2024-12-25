String windDirectionUtil(String? direction) {
  switch (direction?.toLowerCase()) {
    case 'n':
      return 'Utara';
    case 'ne':
      return 'Timur Laut';
    case 'e':
      return 'Timur';
    case 'se':
      return 'Tenggara';
    case 's':
      return 'Selatan';
    case 'sw':
      return 'Barat Daya';
    case 'w':
      return 'Barat';
    case 'nw':
      return 'Barat Laut';
    default:
      return 'Tidak Diketahui';
  }
}
