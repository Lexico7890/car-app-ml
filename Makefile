# Makefile para manejar submódulos y contenedores

# Inicializa y actualiza submódulos
init:
	git submodule update --init --recursive

# Actualiza submódulos a la última versión de sus ramas main
update:
	git submodule foreach 'git checkout main && git pull origin main'

# Levanta los servicios en modo desarrollo
up:
	docker-compose -f docker-compose.dev.yml up --build

# Detiene los servicios
down:
	docker-compose -f docker-compose.dev.yml down

# Limpia los contenedores y volúmenes
clean:
	docker-compose -f docker-compose.dev.yml down -v --remove-orphans
