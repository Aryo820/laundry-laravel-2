@extends('app')
@section('content')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h3 class="card-title">{{ $title }}</h3>
                    <div class="mb-3" align="right">
                        <a href="{{ route('customer.create') }}" class="btn btn-success">Tambah</a>

                    </div>
                    <table class="table table-bordered">
                        <tr>
                            <th>No</th>
                            <th>Nama </th>
                            <th>Telp</th>
                            <th>Alamat</th>
                            <th>Aksi</th>
                        </tr>
                        @foreach ($datas as $index => $data)
                            <tr>
                                <td>{{ $index += 1 }}</td>
                                <td>{{ $data->name }}</td>
                                <td>{{ $data->phone }}</td>
                                <td>{{ $data->address }}</td>
                                <td>
                                    <a href="{{ route('customer.edit', $data->id) }}"
                                        class="btn btn-primary btn-sm">Edit</a>
                                    <form action="{{ route('customer.destroy', $data->id) }}" method="post"
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
