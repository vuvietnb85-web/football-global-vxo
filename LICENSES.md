# Giấy phép / quyền — 08/11/2026 (Asia/Saigon)
- Mã ứng dụng, CSS, SVG, thuật toán limiter/worklet: tự viết cho MVP này; không chép thư viện xử lý âm thanh. Chưa gắn giấy phép phân phối mã app.
- Dữ liệu openfootball: CC0 1.0 Universal. Bằng chứng bản gốc https://raw.githubusercontent.com/openfootball/football.json/master/LICENSE.md , bản lưu data/LICENSE-source.md. Kho https://github.com/openfootball/football.json . Đã đọc nội dung CC0: cho phép sao chép/sửa/phân phối, không bảo đảm dữ liệu.
- Web Audio API, AudioWorklet, IndexedDB, Service Worker: API của trình duyệt, không nhúng thư viện bên thứ ba.
- YouTube iframe do YouTube phục vụ từ xa, không tải/rehost media; bằng chứng per-video oEmbed trong evidence/vff-oembed.json. Không tuyên bố video có giấy phép CC. Quyền xem/nhúng phụ thuộc YouTube và chủ kênh, có thể thu hồi. Điều khoản https://www.youtube.com/static?template=terms ; tài liệu player https://developers.google.com/youtube/iframe_api_reference . Không xử lý audio iframe, không chặn quảng cáo/branding.
- FIFA/DAZN/UEFA/VFF/AFC/VPF/VTV: liên kết tới trang chính thức, không sao chép/phân phối luồng truyền hình, không ngụ ý liên kết tài trợ. HTML chứng cứ trong evidence/ chỉ là ảnh chụp dữ liệu phản hồi để kiểm toán, không hiển thị lại như nội dung app.
- Node assert/fs: built-in Node.js, không bundle vào app. Node license https://github.com/nodejs/node/blob/main/LICENSE .
- Playwright đã cài ở /tmp/pw, KHÔNG bundle/không chạy trong vòng này. Apache-2.0: https://github.com/microsoft/playwright/blob/main/LICENSE ; test/browser.cjs là kịch bản tham khảo vòng trước, không phải kết quả test. Không thư viện runtime ngoài nào khác.

## Bản GitHub
Thư mục evidence/ (HTML/JSON phản hồi kiểm tra cục bộ) không được đưa lên repo. Các tham chiếu evidence ở trên mô tả bản local trước đó, không phải tệp được phân phối. Không có dependency Playwright được đóng gói.
