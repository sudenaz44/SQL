# SQL
Learn_sql

# 👩‍💼 Çalışan Performans ve Log Takip Sistemi

Bu proje, SQL Server üzerinde çalışan basit ama işlevsel bir çalışan yönetim sistemidir. Çalışanların maaş bilgileri, performans puanları, yüksek maaşlılar listesi ve yapılan işlemlerin loglanması gibi özellikler içerir.

## 🚀 Özellikler

- Çalışan kayıtları ekleme
- Yüksek maaşlı çalışanları görüntüleme (`VIEW`)
- Yeni çalışan eklenince otomatik log kaydı (`TRIGGER`)
- Performans puanına göre çalışan değerlendirmesi (`CASE WHEN` ve `VIEW`)
- Log kayıtlarını tarih ve açıklama ile izleme

## 🧱 Kullanılan SQL Yapıları

- `CREATE TABLE`
- `INSERT INTO`
- `SELECT`, `WHERE`, `CASE`
- `VIEW` tanımlama
- `TRIGGER` oluşturma
- `IDENTITY` ile otomatik artan ID

## 📂 Tablolar

### `Calisanlar`
| Alan | Veri Tipi | Açıklama |
|------|-----------|----------|
| CalisanID | INT (Primary Key, Identity) | Otomatik ID |
| Ad | NVARCHAR(100) | Çalışan adı |
| Maas | INT | Maaş bilgisi |
| PerformansPuan | INT | Performans puanı (0-100) |

### `LogTablosu`
| Alan | Veri Tipi | Açıklama |
|------|-----------|----------|
| LogID | INT (Primary Key, Identity) | Otomatik ID |
| Islem | NVARCHAR(255) | İşlem açıklaması |
| Tarih | DATETIME (Default: GETDATE()) | İşlem zamanı |

## 🔍 Örnek Sorgular

### Yüksek maaşlıları listeleme:
```sql
SELECT * FROM YüksekMaaslılar;

SELECT * FROM PerformansDurumu;

SELECT * FROM LogTablosu;

🛠 Başlangıç
Bu projeyi çalıştırmak için bir SQL Server ortamına ihtiyacınız vardır. SSMS (SQL Server Management Studio) kullanarak aşağıdaki adımları izleyin:

Tabloları oluşturun

Verileri ekleyin

Görünümleri (VIEW) tanımlayın

Trigger'ı tanımlayın

Yeni çalışan ekleyerek log sistemini test edin

📜 Lisans
Bu proje kişisel ve eğitimsel amaçlar için hazırlanmıştır. Herkes tarafından kullanılabilir.

Hazırlayan: Sudenaz Kılıç
Tarih: Temmuz 2025


