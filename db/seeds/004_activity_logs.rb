# frozen_string_literal: true

activity_logs = [
  { baby_id: 54, assistant_id: 2, activity_id: 8, start_time: '2017-04-03 16:21:09', stop_time: '2017-04-03 16:49:09', duration: 28, comments: 'lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus.' },
  { baby_id: 43, assistant_id: 9, activity_id: 8, start_time: '2017-04-03 08:52:59', stop_time: '2017-04-03 09:37:59', duration: 45, comments: 'elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum libero dui' },
  { baby_id: 100, assistant_id: 10, activity_id: 3, start_time: '2017-04-03 14:25:37', stop_time: '2017-04-03 14:37:37', duration: 12, comments: 'erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque.' },
  { baby_id: 63, assistant_id: 3, activity_id: 7, start_time: '2017-04-03 22:38:40', stop_time: '2017-04-03 23:14:40', duration: 36, comments: 'elit elit fermentum risus, at fringilla purus mauris a nunc. In' },
  { baby_id: 25, assistant_id: 5, activity_id: 4, start_time: '2017-04-03 09:57:44', stop_time: '2017-04-03 10:46:44', duration: 49, comments: 'Maecenas mi felis, adipiscing fringilla,' },
  { baby_id: 67, assistant_id: 8, activity_id: 8, start_time: '2017-04-03 13:17:50', stop_time: '2017-04-03 13:37:50', duration: 20, comments: 'posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh' },
  { baby_id: 93, assistant_id: 9, activity_id: 5, start_time: '2017-04-03 17:42:45', stop_time: '2017-04-03 18:36:45', duration: 54, comments: 'vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non' },
  { baby_id: 11, assistant_id: 8, activity_id: 5, start_time: '2017-04-03 05:39:13', stop_time: '2017-04-03 06:14:13', duration: 35, comments: 'lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam' },
  { baby_id: 83, assistant_id: 9, activity_id: 7, start_time: '2017-04-03 00:45:09', stop_time: '2017-04-03 00:52:09', duration: 7, comments: 'metus sit amet ante. Vivamus non lorem vitae odio sagittis' },
  { baby_id: 42, assistant_id: 8, activity_id: 3, start_time: '2017-04-03 05:52:13', stop_time: '2017-04-03 06:40:13', duration: 48, comments: 'eu tellus. Phasellus elit pede, malesuada vel, venenatis' },
  { baby_id: 65, assistant_id: 9, activity_id: 4, start_time: '2017-04-03 05:18:59', stop_time: '2017-04-03 05:28:59', duration: 10, comments: 'et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit' },
  { baby_id: 49, assistant_id: 1, activity_id: 4, start_time: '2017-04-03 15:03:55', stop_time: '2017-04-03 15:46:55', duration: 43, comments: 'nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris' },
  { baby_id: 87, assistant_id: 5, activity_id: 8, start_time: '2017-04-03 23:31:09', stop_time: '2017-04-04 00:02:09', duration: 31, comments: 'lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant' },
  { baby_id: 86, assistant_id: 4, activity_id: 5, start_time: '2017-04-03 16:49:40', stop_time: '2017-04-03 17:26:40', duration: 37, comments: 'pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis' },
  { baby_id: 74, assistant_id: 10, activity_id: 7, start_time: '2017-04-03 05:14:13', stop_time: '2017-04-03 05:32:13', duration: 18, comments: 'Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat' },
  { baby_id: 34, assistant_id: 9, activity_id: 2, start_time: '2017-04-03 05:59:17', stop_time: '2017-04-03 06:15:17', duration: 16, comments: 'Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec' },
  { baby_id: 49, assistant_id: 7, activity_id: 4, start_time: '2017-04-03 04:47:28', stop_time: '2017-04-03 05:22:28', duration: 35, comments: 'eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam' },
  { baby_id: 20, assistant_id: 7, activity_id: 1, start_time: '2017-04-03 02:11:36', stop_time: '2017-04-03 03:08:36', duration: 57, comments: 'dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus.' },
  { baby_id: 76, assistant_id: 10, activity_id: 8, start_time: '2017-04-03 21:42:47', stop_time: '2017-04-03 22:26:47', duration: 44, comments: 'ut lacus. Nulla tincidunt, neque' },
  { baby_id: 76, assistant_id: 1, activity_id: 2, start_time: '2017-04-03 13:14:19', stop_time: '2017-04-03 13:44:19', duration: 30, comments: 'Proin eget odio. Aliquam vulputate ullamcorper magna.' },
  { baby_id: 9, assistant_id: 2, activity_id: 4, start_time: '2017-04-03 03:26:59', stop_time: '2017-04-03 04:03:59', duration: 37, comments: 'risus. Quisque libero lacus, varius et,' },
  { baby_id: 85, assistant_id: 5, activity_id: 5, start_time: '2017-04-03 05:11:31', stop_time: '2017-04-03 05:27:31', duration: 16, comments: 'adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum.' },
  { baby_id: 95, assistant_id: 1, activity_id: 8, start_time: '2017-04-03 09:20:10', stop_time: '2017-04-03 09:55:10', duration: 35, comments: 'Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et' },
  { baby_id: 90, assistant_id: 8, activity_id: 1, start_time: '2017-04-03 02:56:06', stop_time: '2017-04-03 03:03:06', duration: 7, comments: 'ut dolor dapibus gravida.' },
  { baby_id: 16, assistant_id: 1, activity_id: 5, start_time: '2017-04-03 11:52:01', stop_time: '2017-04-03 12:07:01', duration: 15, comments: 'porta elit, a feugiat tellus lorem' },
  { baby_id: 66, assistant_id: 2, activity_id: 6, start_time: '2017-04-03 03:34:21', stop_time: '2017-04-03 04:34:21', duration: 60, comments: 'Donec est mauris, rhoncus id, mollis nec, cursus a, enim.' },
  { baby_id: 83, assistant_id: 9, activity_id: 3, start_time: '2017-04-03 08:21:03', stop_time: '2017-04-03 09:05:03', duration: 44, comments: 'senectus et netus et' },
  { baby_id: 26, assistant_id: 4, activity_id: 8, start_time: '2017-04-03 11:51:19', stop_time: '2017-04-03 12:36:19', duration: 45, comments: 'ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede.' },
  { baby_id: 77, assistant_id: 6, activity_id: 1, start_time: '2017-04-03 21:25:41', stop_time: '2017-04-03 21:44:41', duration: 19, comments: 'tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit' },
  { baby_id: 85, assistant_id: 8, activity_id: 6, start_time: '2017-04-03 21:59:42', stop_time: '2017-04-03 22:17:42', duration: 18, comments: 'lectus rutrum urna, nec luctus felis' },
  { baby_id: 80, assistant_id: 1, activity_id: 6, start_time: '2017-04-03 14:25:51', stop_time: '2017-04-03 15:06:51', duration: 41, comments: 'pharetra, felis eget varius ultrices, mauris ipsum porta' },
  { baby_id: 70, assistant_id: 4, activity_id: 8, start_time: '2017-04-03 00:49:13', stop_time: '2017-04-03 01:46:13', duration: 57, comments: 'malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus,' },
  { baby_id: 2, assistant_id: 9, activity_id: 5, start_time: '2017-04-03 07:21:24', stop_time: '2017-04-03 07:59:24', duration: 38, comments: 'risus, at fringilla purus mauris a nunc. In' },
  { baby_id: 12, assistant_id: 9, activity_id: 7, start_time: '2017-04-03 22:40:20', stop_time: '2017-04-03 22:49:20', duration: 9, comments: 'Quisque porttitor eros nec tellus. Nunc' },
  { baby_id: 17, assistant_id: 8, activity_id: 4, start_time: '2017-04-03 21:48:45', stop_time: '2017-04-03 22:06:45', duration: 18, comments: 'dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis' },
  { baby_id: 81, assistant_id: 3, activity_id: 7, start_time: '2017-04-03 21:18:42', stop_time: '2017-04-03 21:35:42', duration: 17, comments: 'tincidunt vehicula risus. Nulla eget metus eu' },
  { baby_id: 52, assistant_id: 4, activity_id: 6, start_time: '2017-04-03 20:34:57', stop_time: '2017-04-03 21:11:57', duration: 37, comments: 'orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada' },
  { baby_id: 97, assistant_id: 2, activity_id: 7, start_time: '2017-04-03 05:50:32', stop_time: '2017-04-03 06:00:32', duration: 10, comments: 'Etiam vestibulum massa rutrum magna. Cras' },
  { baby_id: 94, assistant_id: 7, activity_id: 2, start_time: '2017-04-03 22:22:12', stop_time: '2017-04-03 23:21:12', duration: 59, comments: 'ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,' },
  { baby_id: 89, assistant_id: 5, activity_id: 3, start_time: '2017-04-03 16:12:08', stop_time: '2017-04-03 16:48:08', duration: 36, comments: 'et ultrices posuere cubilia Curae;' },
  { baby_id: 91, assistant_id: 7, activity_id: 1, start_time: '2017-04-03 14:30:11', stop_time: '2017-04-03 15:28:11', duration: 58, comments: 'consequat nec, mollis vitae, posuere at,' },
  { baby_id: 10, assistant_id: 2, activity_id: 8, start_time: '2017-04-03 08:59:01', stop_time: '2017-04-03 09:39:01', duration: 40, comments: 'facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor,' },
  { baby_id: 5, assistant_id: 4, activity_id: 6, start_time: '2017-04-03 04:22:51', stop_time: '2017-04-03 04:33:51', duration: 11, comments: 'cursus. Integer mollis. Integer tincidunt aliquam arcu.' },
  { baby_id: 98, assistant_id: 9, activity_id: 3, start_time: '2017-04-03 20:54:03', stop_time: '2017-04-03 21:40:03', duration: 46, comments: 'vestibulum massa rutrum magna.' },
  { baby_id: 81, assistant_id: 9, activity_id: 3, start_time: '2017-04-03 08:53:07', stop_time: '2017-04-03 09:50:07', duration: 57, comments: 'Nam consequat dolor vitae dolor. Donec fringilla. Donec' },
  { baby_id: 12, assistant_id: 10, activity_id: 8, start_time: '2017-04-03 05:57:59', stop_time: '2017-04-03 06:28:59', duration: 31, comments: 'nec metus facilisis lorem' },
  { baby_id: 87, assistant_id: 3, activity_id: 1, start_time: '2017-04-03 23:29:22', stop_time: '2017-04-04 00:16:22', duration: 47, comments: 'Nam nulla magna, malesuada' },
  { baby_id: 44, assistant_id: 8, activity_id: 3, start_time: '2017-04-03 21:16:34', stop_time: '2017-04-03 22:03:34', duration: 47, comments: 'id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis' },
  { baby_id: 52, assistant_id: 3, activity_id: 8, start_time: '2017-04-03 09:49:20', stop_time: '2017-04-03 09:57:20', duration: 8, comments: 'enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida.' },
  { baby_id: 4, assistant_id: 7, activity_id: 2, start_time: '2017-04-03 18:28:09', stop_time: '2017-04-03 19:23:09', duration: 55, comments: 'dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat' },
  { baby_id: 23, assistant_id: 7, activity_id: 7, start_time: '2017-04-03 14:52:30', stop_time: '2017-04-03 15:47:30', duration: 55, comments: 'ligula. Donec luctus aliquet odio. Etiam' },
  { baby_id: 54, assistant_id: 3, activity_id: 7, start_time: '2017-04-03 10:50:22', stop_time: '2017-04-03 11:35:22', duration: 45, comments: 'sed pede nec ante' },
  { baby_id: 13, assistant_id: 3, activity_id: 5, start_time: '2017-04-03 20:08:33', stop_time: '2017-04-03 20:26:33', duration: 18, comments: 'diam eu dolor egestas rhoncus.' },
  { baby_id: 66, assistant_id: 4, activity_id: 5, start_time: '2017-04-03 23:41:38', stop_time: '2017-04-04 00:25:38', duration: 44, comments: 'enim. Nunc ut erat.' },
  { baby_id: 86, assistant_id: 6, activity_id: 1, start_time: '2017-04-03 09:39:18', stop_time: '2017-04-03 10:32:18', duration: 53, comments: 'felis ullamcorper viverra. Maecenas iaculis aliquet diam.' },
  { baby_id: 24, assistant_id: 8, activity_id: 3, start_time: '2017-04-03 06:05:05', stop_time: '2017-04-03 07:02:05', duration: 57, comments: 'fringilla purus mauris a' },
  { baby_id: 78, assistant_id: 5, activity_id: 8, start_time: '2017-04-03 16:01:18', stop_time: '2017-04-03 16:33:18', duration: 32, comments: 'sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit' },
  { baby_id: 74, assistant_id: 7, activity_id: 3, start_time: '2017-04-03 07:07:30', stop_time: '2017-04-03 07:41:30', duration: 34, comments: 'ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus' },
  { baby_id: 21, assistant_id: 1, activity_id: 4, start_time: '2017-04-03 05:19:28', stop_time: '2017-04-03 05:36:28', duration: 17, comments: 'mauris blandit mattis. Cras eget nisi dictum augue' },
  { baby_id: 32, assistant_id: 5, activity_id: 5, start_time: '2017-04-03 04:35:15', stop_time: '2017-04-03 05:05:15', duration: 30, comments: 'Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed' },
  { baby_id: 100, assistant_id: 6, activity_id: 8, start_time: '2017-04-03 07:17:59', stop_time: '2017-04-03 07:43:59', duration: 26, comments: 'Mauris ut quam vel sapien imperdiet' },
  { baby_id: 38, assistant_id: 10, activity_id: 5, start_time: '2017-04-03 21:32:46', stop_time: '2017-04-03 22:15:46', duration: 43, comments: 'Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare,' },
  { baby_id: 78, assistant_id: 2, activity_id: 5, start_time: '2017-04-03 04:02:11', stop_time: '2017-04-03 04:57:11', duration: 55, comments: 'amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim.' },
  { baby_id: 62, assistant_id: 9, activity_id: 5, start_time: '2017-04-03 07:55:20', stop_time: '2017-04-03 08:45:20', duration: 50, comments: 'quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames' },
  { baby_id: 43, assistant_id: 8, activity_id: 2, start_time: '2017-04-03 03:13:35', stop_time: '2017-04-03 03:40:35', duration: 27, comments: 'neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum' },
  { baby_id: 3, assistant_id: 7, activity_id: 5, start_time: '2017-04-03 13:59:49', stop_time: '2017-04-03 14:27:49', duration: 28, comments: 'enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est' },
  { baby_id: 96, assistant_id: 6, activity_id: 3, start_time: '2017-04-03 20:58:46', stop_time: '2017-04-03 21:34:46', duration: 36, comments: 'id, mollis nec, cursus' },
  { baby_id: 61, assistant_id: 9, activity_id: 3, start_time: '2017-04-03 16:23:13', stop_time: '2017-04-03 16:31:13', duration: 8, comments: 'dui augue eu tellus. Phasellus' },
  { baby_id: 58, assistant_id: 4, activity_id: 5, start_time: '2017-04-03 14:57:29', stop_time: '2017-04-03 15:07:29', duration: 10, comments: 'enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras' },
  { baby_id: 14, assistant_id: 4, activity_id: 2, start_time: '2017-04-03 19:18:03', stop_time: '2017-04-03 20:03:03', duration: 45, comments: 'euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas' },
  { baby_id: 35, assistant_id: 1, activity_id: 8, start_time: '2017-04-03 09:56:41', stop_time: '2017-04-03 10:12:41', duration: 16, comments: 'dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate' },
  { baby_id: 26, assistant_id: 3, activity_id: 8, start_time: '2017-04-03 23:32:01', stop_time: '2017-04-03 23:58:01', duration: 26, comments: 'ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget,' },
  { baby_id: 50, assistant_id: 2, activity_id: 1, start_time: '2017-04-03 14:47:59', stop_time: '2017-04-03 15:47:59', duration: 60, comments: 'sagittis placerat. Cras dictum ultricies' },
  { baby_id: 16, assistant_id: 4, activity_id: 7, start_time: '2017-04-03 01:45:06', stop_time: '2017-04-03 01:58:06', duration: 13, comments: 'Mauris vel turpis. Aliquam adipiscing lobortis' },
  { baby_id: 82, assistant_id: 9, activity_id: 4, start_time: '2017-04-03 13:22:32', stop_time: '2017-04-03 14:16:32', duration: 54, comments: 'quam, elementum at, egestas a, scelerisque' },
  { baby_id: 39, assistant_id: 3, activity_id: 8, start_time: '2017-04-03 04:57:04', stop_time: '2017-04-03 05:20:04', duration: 23, comments: 'tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna' },
  { baby_id: 47, assistant_id: 8, activity_id: 5, start_time: '2017-04-03 18:54:55', stop_time: '2017-04-03 19:04:55', duration: 10, comments: 'auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu' },
  { baby_id: 44, assistant_id: 7, activity_id: 8, start_time: '2017-04-03 17:26:28', stop_time: '2017-04-03 18:09:28', duration: 43, comments: 'urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis' },
  { baby_id: 37, assistant_id: 4, activity_id: 7, start_time: '2017-04-03 04:45:26', stop_time: '2017-04-03 05:12:26', duration: 27, comments: 'tellus faucibus leo, in lobortis tellus justo' },
  { baby_id: 72, assistant_id: 9, activity_id: 3, start_time: '2017-04-03 08:37:56', stop_time: '2017-04-03 09:18:56', duration: 41, comments: 'sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem' },
  { baby_id: 5, assistant_id: 9, activity_id: 2, start_time: '2017-04-03 03:55:29', stop_time: '2017-04-03 04:13:29', duration: 18, comments: 'pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer' },
  { baby_id: 43, assistant_id: 9, activity_id: 8, start_time: '2017-04-03 19:30:20', stop_time: '2017-04-03 19:39:20', duration: 9, comments: 'consequat, lectus sit amet luctus vulputate, nisi' },
  { baby_id: 44, assistant_id: 2, activity_id: 4, start_time: '2017-04-03 12:16:48', stop_time: '2017-04-03 12:56:48', duration: 40, comments: 'ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit' },
  { baby_id: 75, assistant_id: 8, activity_id: 6, start_time: '2017-04-03 10:24:50', stop_time: '2017-04-03 10:58:50', duration: 34, comments: 'non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra' },
  { baby_id: 2, assistant_id: 7, activity_id: 3, start_time: '2017-04-03 07:29:37', stop_time: '2017-04-03 07:59:37', duration: 30, comments: 'tellus lorem eu metus. In lorem. Donec elementum,' },
  { baby_id: 54, assistant_id: 6, activity_id: 1, start_time: '2017-04-03 10:14:03', stop_time: '2017-04-03 10:32:03', duration: 18, comments: 'metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam' },
  { baby_id: 66, assistant_id: 1, activity_id: 8, start_time: '2017-04-03 23:09:34', stop_time: '2017-04-03 23:57:34', duration: 48, comments: 'eget mollis lectus pede et risus. Quisque libero lacus, varius et,' },
  { baby_id: 36, assistant_id: 6, activity_id: 4, start_time: '2017-04-03 08:44:19', stop_time: '2017-04-03 09:18:19', duration: 34, comments: 'netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam' },
  { baby_id: 50, assistant_id: 2, activity_id: 1, start_time: '2017-04-03 04:52:56', stop_time: '2017-04-03 05:38:56', duration: 46, comments: 'sit amet metus. Aliquam erat volutpat.' },
  { baby_id: 77, assistant_id: 9, activity_id: 5, start_time: '2017-04-03 00:57:15', stop_time: '2017-04-03 01:17:15', duration: 20, comments: 'accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique' },
  { baby_id: 69, assistant_id: 6, activity_id: 3, start_time: '2017-04-03 05:43:11', stop_time: '2017-04-03 06:43:11', duration: 60, comments: 'orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu' },
  { baby_id: 54, assistant_id: 10, activity_id: 3, start_time: '2017-04-03 02:15:35', stop_time: '2017-04-03 03:11:35', duration: 56, comments: 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac' },
  { baby_id: 44, assistant_id: 7, activity_id: 6, start_time: '2017-04-03 12:51:35', stop_time: '2017-04-03 13:38:35', duration: 47, comments: 'sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare,' },
  { baby_id: 24, assistant_id: 8, activity_id: 5, start_time: '2017-04-03 05:45:18', stop_time: '2017-04-03 06:20:18', duration: 35, comments: 'eget tincidunt dui augue eu tellus. Phasellus elit' },
  { baby_id: 2, assistant_id: 1, activity_id: 3, start_time: '2017-04-03 17:06:09', stop_time: '2017-04-03 17:42:09', duration: 36, comments: 'dolor. Donec fringilla. Donec feugiat metus sit amet' },
  { baby_id: 73, assistant_id: 2, activity_id: 4, start_time: '2017-04-03 21:46:01', stop_time: '2017-04-03 21:57:01', duration: 11, comments: 'Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc' },
  { baby_id: 66, assistant_id: 6, activity_id: 7, start_time: '2017-04-03 13:17:34', stop_time: '2017-04-03 13:56:34', duration: 39, comments: 'nulla vulputate dui, nec tempus mauris erat eget ipsum.' },
  { baby_id: 92, assistant_id: 4, activity_id: 3, start_time: '2017-04-03 13:19:05', stop_time: '2017-04-03 14:15:05', duration: 56, comments: 'aliquam arcu. Aliquam ultrices iaculis odio. Nam' },
  { baby_id: 5, assistant_id: 9, activity_id: 1, start_time: '2017-04-03 15:35:40', stop_time: '2017-04-03 16:32:40', duration: 57, comments: 'Quisque nonummy ipsum non arcu. Vivamus' },
  { baby_id: 6, assistant_id: 3, activity_id: 6, start_time: '2017-04-03 00:30:58', stop_time: '2017-04-03 00:37:58', duration: 7, comments: 'vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus' }
]

activity_logs.each do |activity_log|
  ActivityLog.find_or_create_by(activity_log)
end
