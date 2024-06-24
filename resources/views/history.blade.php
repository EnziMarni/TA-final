@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Riwayat Dokumen: {{ $dokumen->judul_dokumen }}</h1>

    @if ($histories->isEmpty())
        <p>Tidak ada riwayat untuk dokumen ini.</p>

        <a href="{{ route('list-dokumen') }}" class="btn btn-primary">
            <i class="fas fa-arrow-left"></i> Back to List Dokumen
        </a>
    @else
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#historyModal">
            Lihat Riwayat
        </button>
        <br>

        <a href="{{ route('list-dokumen') }}" class="btn btn-primary" style="margin-top:20px">
            <i class="fas fa-arrow-left"></i> Back to List Dokumen
        </a>

        <!-- Modal -->
        <div class="modal fade" id="historyModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Riwayat Dokumen: {{ $dokumen->judul_dokumen }}</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">No</th>
                                    <th scope="col">Judul Dokumen</th>
                                    <th scope="col">Deskripsi</th>
                                    <th scope="col">Kategori</th>
                                    <th scope="col">Validasi</th>
                                    <th scope="col">Tahun</th>
                                    <th scope="col">File</th>
                                    <th scope="col">Tags</th>
                                    <th scope="col">Tanggal Diubah</th>
                                    <th scope="col">Dibuat Oleh</th>
                                </tr>
                            </thead>
                            <tbody id="documentTableBody">
                                @foreach ($histories as $index => $history)
                                    <tr>
                                        <td>{{ $index + 1 }}</td>
                                        <td>{{ $history->judul_dokumen }}</td>
                                        <td>{{ $history->deskripsi_dokumen }}</td>
                                        <td>{{ $history->kategori_dokumen }}</td>
                                        <td>{{ $history->validasi_dokumen }}</td>
                                        <td>{{ $history->tahun_dokumen }}</td>
                                        <td>
                                            @if($history->dokumen_file)
                                                <a href="{{ asset('storage/documents/' . $history->dokumen_file) }}" target="_blank">
                                                    <i class="fa fa-file"></i>
                                                </a>
                                            @else
                                                -
                                            @endif
                                        </td>
                                        <td>{{ $history->tags }}</td>
                                        <td>{{ \Carbon\Carbon::parse($history->created_at)->setTimezone('Asia/Jakarta')->format('Y-m-d H:i:s') }}</td>
                                        <td>{{ $history->created_by }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                    </div>
                </div>
            </div>
        </div>
    @endif
</div>
@endsection
