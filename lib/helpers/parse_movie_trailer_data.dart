String parseMovieTrailerData(Map<String, dynamic> data) {
  for (var item in data['results']) {
    if (item['site'] == 'YouTube' && item['type'] == 'Trailer') {
      return item['key'];
    }
  }
  return '';
}
