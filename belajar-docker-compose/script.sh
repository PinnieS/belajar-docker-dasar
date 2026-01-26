# Menjalankan & memberhentikan docker compose
docker compose create   # Membuat
docker compose start    # Menjalankan
docker compose stop     # Memberhentikan

# Melihat Container 
docker compose ps 

# Menghapus container // volume dan image tidak ikut terhapus  
docker compose down 

docker compose down --rmi all # Menghapus container sekaligus semua imagenya

# Kode project name (Melihat daftar project name yang sedang berjalan di Docker)
docker compose ls

# Melihat kejadian apa saja yang terjadi di dalem Docker secara realtime
docker events --filter 'container=(nama container)'
docker logs -f ( nama container) # Melihat isi catatan sistem/log aplikasi untuk mencari error

# Konfigurasi Multi-Lingkungan (Environment Overrides) // Kode extend service //Multi-environments
docker compose -f dev.yaml 
docker compose -f docker-compose.yaml -f dev.yaml create
docker compose -f docker-compose.yaml -f dev.yaml start


# Perintah Build & Eksekusi 
docker compose build # Membangun (memasak) Image dari Dockerfile
docker compose up # # Membuat + Menjalankan
docker compose up -d # Menjalankan di Background / Detached mode
docker compose up --build # Paksa build ulang image sebelum menjalankan