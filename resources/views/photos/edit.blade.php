@extends('layouts.app')
@section('content')
<h2>Edit Foto</h2>
<form action="{{ route('photos.update', $photo->fotoID)}}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <table style="border: none">
        <tr>
            <td><label for="judulFoto">judulFoto</label></td>
            <td><input type="text" id="judulFoto" name="judulFoto" value="{{ $photo->judulFoto}}" required></td>
        </tr>
        <tr>
            <td><label for="photo">Pilih Foto</label></td>
            <td>
                <input type="file" id="photo" name="photo">
                <small>Biarakan kosong jika tidak tidak ingin mengubah foto.</small>
            </td>
        </tr>
        <tr>
            <td><label for="description">Deskripsi</label></td>
            <td><textarea name="description" name="description" rows="3">{{ $photo->deskripsiFoto}}</textarea></td>
        </tr>
        <tr>
            <td><label for="albumID">Album</label></td>
            <td>
                <select name="albumID" id="albumID" required>
                    <option value="">Pilh Album</option>
                    @foreach ($albums as $album)
                    <option value="{{ $album->albumID}}" {{ $photo->albumID == $album->albumID ? 'selected' : ''}}>
                    {{ $album->namaAlbum}}</option>
                    @endforeach
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2"><button type="submit">Update Foto</button></td>
        </tr>
    </table>
</form>
@endsection