# Bóng đá Global — PROTOTYPE chưa hoàn thiện

Bản nguồn thử nghiệm công khai; demo trên GitHub Pages: https://vuvietnb85-web.github.io/football-global-vxo/ . Không phải ứng dụng xem mọi kênh bóng đá toàn cầu.

## Chạy local
Yêu cầu Python 3 và trình duyệt hiện đại:
```sh
python3 -m http.server 8096
```
Mở http://localhost:8096/ từ thư mục repo. Không có dependency runtime cần cài.

## Có gì và chưa có gì
- 7 tab tiếng Việt, lịch/kết quả Ngoại hạng Anh, bảng tự tính, yêu thích IndexedDB.
- Các thẻ FIFA+/DAZN, UEFA.tv, VFF và AFC mở **trang chính thức**, không bảo đảm trận đang LIVE, miễn phí tại mọi vùng hoặc không cần tài khoản.
- Một iframe YouTube VFF tải theo thao tác người dùng; tiêu đề cũ có chữ trực tiếp KHÔNG chứng minh đang live. Khả dụng/quyền nhúng có thể thay đổi. Không tải/rehost video, không vượt khóa trả phí hoặc giới hạn vùng.
- Dữ liệu openfootball là lịch/kết quả cộng đồng, không phải feed live; polling 60 giây không biến thành live. Có thể chậm hoặc sai, không dùng để cá cược.
- Service worker và IndexedDB được triển khai nhưng kiểm thử trình duyệt/offline/reload chưa xác minh. Không khẳng định đã thử trên Galaxy A56 hoặc PWA cài đặt thành công.

## Âm thanh chỉ DEMO
Oscillator tổng hợp → envelope → lowshelf 180 Hz +1,5 dB → highshelf 5 kHz −1 dB → gain 1.10 → compressor → AudioWorklet sample-peak limiter, lookahead 5 ms, ceiling −1 dBFS. Không phải true-peak limiter; không bảo đảm −1 dBTP. EQ ấm là giả định, không phải tiêu chuẩn “Pháp”. **Không xử lý tiếng bình luận hoặc âm thanh iframe YouTube cross-origin.**

## Kiểm thử tái tạo
Node.js, không cần npm install:
```sh
node test/node.mjs
node test/limiter.mjs
```
7 assertions Node và 2 phép đo sine/noise +6 dBFS; kết quả ở test/results.json.
Browser đã không truy cập được server local/internal trong môi trường kiểm: chưa có kiểm tra UI/player/audio/favorites/offline thành công. Xem test/browser-observed.md và test/BROWSER_CHECKLIST.md. test/browser.cjs là kịch bản tham khảo chưa chạy, phụ thuộc đường dẫn Playwright cục bộ /tmp/pw; không phải test portable đã xác minh.

## Nguồn và quyền
Dữ liệu openfootball/football.json CC0 1.0 Universal, giữ đầy đủ data/LICENSE-source.md; ba mùa 2024/25, 2025/26, 2026/27, 380 trận/mùa. Endpoint hiện dùng trong core.mjs. Xem SOURCES.md và LICENSES.md cho nguồn và giới hạn lãnh thổ/quyền. Mã ứng dụng chưa được chủ sở hữu gắn giấy phép phân phối; không suy diễn CC0 của dữ liệu áp dụng cho mã app.

## Vệ sinh bản upload
Không kèm HTML chứng cứ bên thứ ba, logs, phiên đăng nhập, .env, credentials, browser profile, node_modules hay archive. Các ghi chú nguồn là kết quả kiểm tra trước đó ngày 08/11/2026 (Asia/Saigon), không phải xác minh phát lại tại thời điểm tải repo. Demo tĩnh triển khai bằng GitHub Pages từ nhánh main, thư mục gốc; không có backend hay xử lý thanh toán.
