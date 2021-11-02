// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a id locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'id';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "access_to_location_denied":
            MessageLookupByLibrary.simpleMessage("Akses lokasi ditolak"),
        "access_to_location_permanently_denied":
            MessageLookupByLibrary.simpleMessage(
                "Akses lokasi ditolak permanen"),
        "allow_access_to_the_location_services":
            MessageLookupByLibrary.simpleMessage(
                "Ijinkan untuk mengakses layanan lokasi."),
        "allow_access_to_the_location_services_from_settings":
            MessageLookupByLibrary.simpleMessage(
                "Ijinkan untuk mengakses layanan lokasi dari pengaturan perangkat"),
        "cant_get_current_location": MessageLookupByLibrary.simpleMessage(
            "Tidak dapat menemukan lokasi"),
        "finding_place":
            MessageLookupByLibrary.simpleMessage("Sedang mencari lokasi..."),
        "no_result_found":
            MessageLookupByLibrary.simpleMessage("Tidak ditemukan"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "please_check_your_connection": MessageLookupByLibrary.simpleMessage(
            "Periksa kembali jaringan internetmu"),
        "please_make_sure_you_enable_gps_and_try_again":
            MessageLookupByLibrary.simpleMessage(
                "Pastikan anda mengaktifkan GPS dan coba lagi"),
        "search_place": MessageLookupByLibrary.simpleMessage("Cari tempat"),
        "server_error": MessageLookupByLibrary.simpleMessage(
            "Gagal terkoneksi dengan server"),
        "unnamedPlace":
            MessageLookupByLibrary.simpleMessage("Tempat tidak bernama")
      };
}
