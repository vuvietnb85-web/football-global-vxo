#!/usr/bin/env bash
# Kiểm tra link định kỳ. Ghi report.md; thoát 1 nếu có link hỏng thật (lỗi mạng, 404, 5xx).
# 403/429 thường là chống bot (ví dụ Cloudflare chặn máy GitHub) nên chỉ ghi cảnh báo.
set -u
LIST="${1:-scripts/links.txt}"
REPORT="${2:-report.md}"
fail=0
echo "| Trạng thái | Mã HTTP | Link |" > "$REPORT"
echo "|---|---|---|" >> "$REPORT"
while IFS= read -r url; do
  url="${url%%#*}"; url="$(echo "$url" | xargs)"; [ -z "$url" ] && continue
  code=000
  for i in 1 2 3; do
    code=$(curl -s -o /dev/null -w '%{http_code}' -L --max-time 30 -A 'Mozilla/5.0 (link-health; +https://github.com/vuvietnb85-web)' "$url" || true)
    [[ "$code" =~ ^[23] ]] && break
    sleep 10
  done
  if [[ "$code" =~ ^[23] ]]; then s="OK"
  elif [[ "$code" == 403 || "$code" == 429 ]]; then s="Cảnh báo (có thể bị chặn bot)"
  else s="HỎNG"; fail=1; fi
  echo "| $s | $code | $url |" >> "$REPORT"
  echo "$s $code $url"
done < "$LIST"
exit $fail
