#!/bin/bash

# Ruta a los repos remotos
FRONTEND_REPO="https://github.com/tu-usuario/car-frontend.git"
BACKEND_REPO="https://github.com/tu-usuario/car-backend-api.git"
ML_REPO="https://github.com/tu-usuario/car-ml-worker.git"

# Elimina carpetas antiguas
rm -rf frontend backend-api ml-worker

# Agrega submódulos
git submodule add $FRONTEND_REPO frontend
git submodule add $BACKEND_REPO backend-api
git submodule add $ML_REPO ml-worker

# Confirma cambios
git add .gitmodules frontend backend-api ml-worker
git commit -m "Add all services as submodules"
git push
