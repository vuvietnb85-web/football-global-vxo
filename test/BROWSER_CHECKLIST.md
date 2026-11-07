# Kiểm thủ công (CHƯA chạy) — vòng 2
Không chạy Playwright/browser trong vòng này. Người kiểm ghi ngày Asia/Saigon và thiết bị.
1. Mở http://localhost:8096/ trong Chrome, viewport 412×892 (gần 9:19.5); xóa cache cũ nếu đang dùng SW v1. Đạt: tab Xem kênh mặc định, 4 thẻ, không tràn ngang, Navy/Gold, chữ tiếng Việt.
2. Mỗi thẻ mở “Mở trang phát chính thức”. Đạt: đúng domain FIFA/UEFA/YouTube, tab mới; không bị dẫn sang luồng không rõ quyền. Ghi rõ geoblock, yêu cầu đăng nhập, không tự tạo tài khoản.
3. Thẻ VFF bấm tải player. Đạt: iframe YouTube video 5mA0428QPUQ, giữ controls/branding, được phát hoặc hiện lỗi vùng/quyền trung thực. Không khẳng định đang LIVE từ chữ trong title cũ. FIFA/UEFA/AFC không có player không được kiểm quyền.
4. Âm thanh: bấm nghe thử sau tương tác. Đạt: oscillator ngắn, không phải bình luận; kiểm DevTools Worklet không lỗi. Chain compressor → sample-peak AudioWorklet. Ghi rõ không xử lý âm iframe.
5. Chuyển tất cả 7 tab, Lịch chọn 2026-08-21, Kết quả có các trận từ dữ liệu nguồn; Giải đấu có bảng tự tính. Không gắn LIVE cho dữ liệu lịch.
6. Tại Kết quả chọn ☆ một trận → Yêu thích thấy trận → reload → Yêu thích vẫn có. Đạt: IndexedDB giữ ID trận.
7. Đợi SW activated/controlling (DevTools Application), tắt mạng → reload. Đạt: app shell và tab hoạt động, dữ liệu cache/đóng gói có nhãn đúng, favorites còn. Xem kênh hiển thị thẻ offline nhưng video/đường dẫn cần mạng, không báo phát thành công.
8. Mở console: đạt khi 0 lỗi JS không bắt được, không lỗi tải AudioWorklet/shell. Mạng bị chặn/YouTube geo-error phải ghi riêng. Bật lại mạng và Cập nhật.
9. Chụp shots/01-watch.png, 02-vff-player.png, 03-favorites-reload.png, 04-offline.png. Hiện thư mục shots/ chưa có ảnh vì chưa chạy browser.
10. Thử Galaxy A56 thật: cảm ứng, audio latency, Worklet tải CPU, cài PWA. SVG icon có thể chưa đủ tiêu chí install trên một số trình duyệt; cần PNG 192/512 nếu bị từ chối.
