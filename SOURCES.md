# Điểm xem chính thức — kiểm 08/11/2026 (Asia/Saigon)
Kết quả curl thật ở evidence/curl.json; HTML và oEmbed được lưu làm chứng cứ. HTTP 200 không chứng minh quyền mọi trận hoặc khả năng xem tại Việt Nam. Không dùng tài khoản, không vượt geoblock, không lấy URL stream nội bộ.

| Điểm xem / URL | curl | Miễn phí / tài khoản | Live/VOD theo nguồn | Vùng | Nhúng |
|---|---|---|---|---|---|
| FIFA+ hướng dẫn chính thức https://www.fifa.com/en/dazn |200|DAZN Help nói miễn phí, cần DAZN account hoặc FIFA ID liên kết|FIFA nói live và on-demand, không xác nhận trận đang live|DAZN/FIFA nói selected territories/quyền theo vùng; VN chưa kiểm|Chưa có bằng chứng: không nhúng|
| https://www.dazn.com/fifaplus |404|Không suy diễn 404 thành không có dịch vụ|DAZN Help chỉ URL này, máy kiểm trả 404|Có thể phụ thuộc định tuyến/vùng, cần xác minh|Không|
| https://www.uefa.tv/ |200|FAQ: MyUEFA miễn phí; Premium Spain riêng có phí|Live chọn lọc trẻ/nữ/futsal và bốc thăm; highlights, re-runs, VOD. Không bảo đảm Champions League live|FAQ: có geo-restrictions; chưa xác minh từng trận ở VN|Chưa có bằng chứng: không nhúng|
| https://www.youtube.com/channel/UCndcERoL9eG-XNljgUk1Gag |200|Video công khai; yêu cầu đăng nhập tùy video chưa kiểm|Kênh VFF, từng có livestream theo bài VFF; không gắn nhãn đang LIVE|Chưa có tuyên bố vùng cho video này, can_xac_minh|CÓ, chỉ video 5mA0428QPUQ: oEmbed 200 trả iframe và author VFF Channel|
| https://www.youtube.com/AFCAsianCup/videos |200|Công khai; tài khoản tùy video chưa kiểm|Mô tả chính thức, các video highlights/VOD; live hiện tại chưa xác minh|can_xac_minh|Chưa có bằng chứng cho video cụ thể: không nhúng|

## Bằng chứng nội dung
- FIFA: https://www.fifa.com/en/dazn (200), mô tả chuyển FIFA+ sang DAZN, live + on-demand.
- DAZN: https://www.dazn.com/en-GB/help/articles/36029102113053-fifa-on-dazn-everything-you-need-to-know (200): “FIFA+ is available for free on DAZN. Just sign up”; khoảng lưu trữ/replays và live global. Bài trợ giúp vùng en-GB, không coi là bảo đảm dịch vụ tại VN.
- UEFA: https://www.uefa.com/uefatv-faq/ (200): free registration, giới hạn lãnh thổ, các loại nội dung, Premium Spain khác gói miễn phí.
- VFF: https://vff.org.vn/vi/vff-channel-cot-moc-moi-muc-tieu-moi/ (200), VFF xác nhận quản lý kênh YouTube chính thức từ 2016.
- oEmbed: URL chính xác trong evidence/oembed-check.json, JSON thật trong evidence/vff-oembed.json, HTTP 200. Author VFF Channel; iframe https://www.youtube.com/embed/5mA0428QPUQ . Tiêu đề “Trực tiếp: Cộng hòa Kyrgyz vs QĐ. Bắc Mariana |15:00-05.10.2026| Vòng Loại U17 Nữ Châu Á 2027”. Đó là tiêu đề xuất bản cũ, không phải bằng chứng đang LIVE ngày kiểm. Quyền nhúng chỉ theo oEmbed, không phải giấy phép tải hay phát lại độc lập. Khả dụng có thể đổi.
- AFC: mô tả kênh YouTube “Welcome to the official AFC Asian Cup YouTube Channel”, video highlights. Không suy diễn quyền phát mọi giải của AFC.

## can_xac_minh
- https://vpf.vn/ — 200: xác nhận có trang VPF, chưa có chứng cứ đầy đủ kênh/video miễn phí + quyền theo trận; chưa đưa thẻ xem.
- https://vtvgo.vn/ — 200: cổng chính thức, chưa xác minh lịch bóng đá/bản quyền cụ thể + tài khoản/vùng, không quảng cáo là phát miễn phí mọi trận. Chưa đưa thẻ xem.
- FIFA+ khả dụng VN và URL DAZN trực tiếp; các giới hạn tài khoản/vùng của YouTube; live hiện tại từng kênh. Không kết luận chung rằng “không có bóng đá miễn phí”.

## Dữ liệu lịch/kết quả
openfootball CC0: README và data/LICENSE-source.md; JSON endpoints 2024-25, 2025-26, 2026-27 đều curl 200, 380 trận mỗi mùa, kiểm cùng ngày. Không phải dữ liệu live hay nguồn xác nhận quyền phát.

## Bản GitHub
Thư mục evidence/ (HTML/JSON phản hồi kiểm tra cục bộ) không được đưa lên repo. Các tham chiếu evidence ở trên mô tả bản local trước đó, không phải tệp được phân phối. Không có dependency Playwright được đóng gói.
