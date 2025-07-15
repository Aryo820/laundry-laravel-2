@extends('app')
@section('content')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h3 class="card-title">{{ $title }}</h3>
                    <div class="mb-3" align="right">
                        <a href="{{ route('trans.create') }}" class="btn btn-success">Tambah</a>

                    </div>
                    <table class="table table-bordered">
                        <tr>
                            <th>No</th>
                            <th>No Pesanan </th>
                            <th>Pelanggan</th>
                            <th>Tanggal Selesai</th>
                            <th>Status</th>
                            <th>Aksi</th>
                        </tr>
                        {{-- @dd($datas) --}}
                        @foreach ($datas as $index => $data)
                            <tr>
                                <td>{{ $index += 1 }}</td>
                                <td><a href="{{ route('trans.show', $data->id) }}">{{ $data->order_code }}</a></td>
                                <td>{{ $data->customer->name }}</td>
                                <td>{{ date('d F Y', strtotime($data->order_end_date)) }}</td>
                                <td>
                                    {{-- ====================================================== --}}
                                    {{-- PERBAIKAN UTAMA ADA DI SINI --}}
                                    {{-- Kode diubah untuk menampilkan teks status dengan warna --}}
                                    <span class=" {{ $data->order_status == '1' }}">
                                        {{ $data->status_text }}
                                    </span>
                                    {{-- ====================================================== --}}
                                </td>
                                <td>
                                    <a href="{{ route('trans.print', $data->id) }}" class="btn btn-warning btn-sm" target="_blank">Print</a>
                                    <a href="{{ route('trans.show', $data->id) }}" class="btn btn-primary btn-sm">Bayar</a>
                                    <form action="{{ route('trans.destroy', $data->id) }}" method="post"
                                        style="display: inline">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" onclick="return confirm('Yakin ingin Delete ?')"
                                            class="btn btn-danger btn-sm">Delete</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
