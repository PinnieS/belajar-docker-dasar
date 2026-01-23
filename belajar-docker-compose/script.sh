# Menjalankan & memberhentikan docker compose
docker compose create   # Membuat
docker compose start    # Menjalankan
docker compose stop     # Memberhentikan

# Melihat Container 
docker compose ps 

# Menghapus container // volume dan image tidak ikut terhapus  
docker compose down 

# Kode project name
docker compose ls

# Melihat kejadian apa saja yang terjadi di dalem Docker secara realtime
docker events --filter 'container=(nama container)'

# Konfigurasi Multi-Lingkungan (Environment Overrides) // Kode extend service //Multi-environments
docker compose -f dev.yaml 
docker compose -f docker-compose.yaml -f dev.yaml create
docker compose -f docker-compose.yaml -f dev.yaml start



