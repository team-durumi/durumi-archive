# 두루미 기록

## 프로젝트 시작

```bash
npm install
hugo server
git submodule update --init --recursive
```

## UI

- https://tailblocks.cc/ html block을 붙이면서 가볍게 스타일링합니다.
- UI component 규칙을 적용해  basic / app / marketing 폴더에 섹션들을 붙여봅니다.

## Data/Record

- 엑셀에 접근해서 몇 가지 정보를 수정합니다. 변경된 정보를 반영하면서 휴고를 빌드합니다.

```bash
hugo server --disableFastRender
```

## 스샷 찍기

```
sudo apt-get -y install libgtk2.0-0 libgtk-3-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb libgbm-dev
sudo npm -g i puppeteer capture-website-cli

sudo apt-get -y install jq
curl -s http://localhost:1313/index.json | jq -r '.data[] | .codename'
curl -s http://localhost:1313/index.json | jq -r '.data[] | .url'
curl -s http://localhost:1313/index.json | jq -r '.data[] | .codename, .url'
```