from flask import Flask,render_template
app=Flask(__name__)
@app.route('/')
def login_register():
    return render_template('login_register.html')

if __name__=="__main__":
    app.run(debug=True)


      