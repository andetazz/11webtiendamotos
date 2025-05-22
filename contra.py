from app import create_app, db
from werkzeug.security import generate_password_hash
from app.models.users import Users

app = create_app()

# Usar contexto de aplicación
with app.app_context():
    users = Users.query.all()
    for user in users:
        # Evitar duplicado de hash
        if len(user.passworduser) < 30:
            user.passworduser = generate_password_hash(user.passworduser)
    db.session.commit()
    print("✅ Contraseñas actualizadas y hasheadas.")