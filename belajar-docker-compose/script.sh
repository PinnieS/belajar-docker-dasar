# Menjalankan & memberhentikan docker compose
docker compose create   # Membuat
docker compose start    # Menjalankan
docker compose stop     # Memberhentikan

# Melihat Container 
docker compose ps 

# Menghapus container 
docker compose down 

# Kode project name
docker compose ls

# Melihat kejadian apa saja yang terjadi di dalem Docker secara realtime
docker events --filter 'container=(nama container)'
