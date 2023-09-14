import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class UploadController extends GetxController {
  final FirebaseStorage storage = FirebaseStorage.instance;
  final Uuid uuid = const Uuid();

  String bytesTransferred(TaskSnapshot snapshot) {
    return '${snapshot.bytesTransferred}/${snapshot.totalBytes}';
  }

  Future<TaskSnapshot> uploadFile(
      {required File file, required String uid}) async {
    // Generate a v1 (time-based) id
    String id = uuid.v1();

    final photoRef = storage.ref('pdf-invoice').child(uid).child(id);

    final UploadTask uploadTask = photoRef.putFile(
      file,
      SettableMetadata(
        contentType: 'application/pdf', // Adjust content type if necessary
        customMetadata: <String, String>{'pdfId': id},
      ),
    );

    final TaskSnapshot taskSnap = await uploadTask;
    return taskSnap;
  }

  Future<void> deleteFile({required String uid, required String pdfId}) async {
    final photoRef = storage.ref('pdf-invoice').child(uid).child(pdfId);

    await photoRef.delete();
  }

  Future<List<Reference>> getAllPdfReferences(String uid) async {
    final ListResult result =
        await storage.ref('pdf-invoice').child(uid).listAll();

    return result.items;
  }
}
