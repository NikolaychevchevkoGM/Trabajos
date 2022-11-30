from flask import Flask, render_template, request, redirect, url_for
from conex import conexi

app= Flask(__name__)


@app.route('/')
def index():
    query=conexi.cursor()
    query.execute("SELECT * FROM personas")
    data=query.fetchall()
    return render_template('index.html', persons=data)


@app.route( '/insert', methods = ["POST"])
def insert():
    if request.method=="POST":
        tip_doc=request.form['tip_doc']
        numD=request.form['numD']
        nombre=request.form['nombre']
        lastN=request.form['lastN']
        tel=request.form['tel']

        query=conexi.cursor()
        query.execute("INSERT INTO personas(tip_doc,numD,nombre,lastN,tel)VALUES  (%s, %s, %s,%s,%s)",(tip_doc,numD,nombre,lastN,tel))
        conexi.commit()
        if(query):
            return redirect(url_for('index'))

@app.route('/edit/<string:id>')
def getPerson(id):
    query=conexi.cursor()
    query.execute('SELECT * FROM personas WHERE id_P={0}'.format(id))
    data=query.fetchall()
    return render_template('edit.html', person=data[0])


@app.route('/updat', methods=['POST', 'GET'])
def updat():
    if request.method=="POST":
        id_P=request.form['id_P']
        tip_doc=request.form['tip_doc']
        numD=request.form['numD']
        nombre=request.form['nombre']
        lastN=request.form['lastN']
        tel=request.form['tel']

        query=conexi.cursor()
        query.execute("UPDATE personas SET tip_doc=%s,numD=%s,nombre=%s,lastN=%s,tel=%s WHERE id_P=%s",(tip_doc,numD,nombre,lastN,tel,id_P))
        conexi.commit()
        if(query):
            return redirect(url_for('index'))
            
@app.route('/borrar/<string:id>')    
def borrar(id):
    query=conexi.cursor()
    query.execute('DELETE FROM personas WHERE id_P={0}'.format(id))
    conexi.commit()
    if(query):
        return redirect(url_for('index'))
    


if __name__ == "__main__":
    app.run(debug=True)