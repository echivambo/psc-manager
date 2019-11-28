<?php

namespace App\Http\Controllers;

use App\AssistenteComunitario;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AssistenteComunitarioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $results = DB::table('assistente_comunitarios')
            ->join('users', 'users.id', '=', 'assistente_comunitarios.user_id')
            ->select('assistente_comunitarios.*', 'users.name as user')
            ->where('deleted_at', null)
            ->get();
        //$results = AssistenteComunitario::all();
        return view('admin.assistente-comunitario.index', compact('results'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.assistente-comunitario.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function store(Request $request)
    {
        AssistenteComunitario::create($request->all());
        return redirect()->route('assistentes-comunitarios.create')->with('message', 'Assistente comunitário registado com sucesso!');
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $result = AssistenteComunitario::find($id);
        return view('admin.assistente-comunitario.add', compact('result'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $result = AssistenteComunitario::find($id);
        $posts =$request->all();

        $result->nome = $posts['nome'];
        $result->email = $posts['email'];
        $result->contacto = $posts['contacto'];
        $result->user_id = $posts['user_id'];
        $result->save();

        return redirect()->route('assistentes-comunitarios.index')->with('message', 'Dados do assistente comunitário actualizados com sucesso!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        AssistenteComunitario::where('id', $id)->delete();
        return redirect()->route('assistentes-comunitarios.index')->with('message', 'O assistente comunitário removido da base de dados!');
    }
}
