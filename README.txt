
android --> tappsafetyandsecurity -> main(src->com->hkmc->telematics->apps-calendar->mangage-> mainactivity)

json -> ucs calendar (file:///D:/02_Project/09_%EA%B3%B5%ED%86%B5%20%EC%82%AC%EC%96%91%EC%84%9C/02_%EC%84%BC%ED%84%B0%ED%94%84%EB%A1%9C%ED%86%A0%EC%BD%9C/%EB%82%B4%EC%88%98/Korea_TMS_Protocol_1.22.0.3-ALL/TMS_index.html)

word ->https://confluence.mobis.co.kr/pages/viewpage.action?pageId=236689210


contentresolver ---> db 가져옴 , contentvalue db 모델

messagequeue , thread , handler는 세트

onConfigurationChanged -> 가로 세로 화면 데이터 변함없게

cursor -> cell line?정도로 이해하면됨

/////////
cd WIDE  -> packages -> apps -> HKMC_TAppSafetyAndSecurity/

////////////////////
build 


build 받기
source build/envsetup.sh
lunch
  번 호 선택   
user / eng (개발자로) ->eng로
dummy / release(navi) -> dummy로
buildall -j8
cpimg
fmdn

fwdn은 전체 이미지 pu


//내꺼 빌드
beyond compare 이후
 mm   빌드


////////////////////

repo sync (git pull)

////////////////////

android shortcut 
ctrl alt left = prev cursor
ctrl alt right = after cursor
ctrl shift n = folder find
alt f1 = open folder
f2 = error find
ctrl alt enter =error fix
alt insert = 생성자
ctrl g = go line 
alt shift left (xml - code)
ctrl home 맨 위
ctrl end 맨아래
alt 위 아래 <- function 으로 움직임
alt 좌 우 < - 위 탭으로 움직임
alt shift up / down <- 커서 스크롤 방향으로 위치전환
ctrl f12 < - function look for
///////////////////////
shift insert <- copy(mobaxterm)

/home3/hobread05/WIDE/out/target/product/wp_daudioplus_kia_kr/system/app/

////

log filter
tag filter --> SQLiteConnectionPool|hsh|system.out|iot_|VRM_UI|ActivityThread|AndroidRuntime|system.err|


//

jira -> htpp: ~~~~  -> more subtask(만들어야하면) -> create branch -> /// 
(mobaxterm) git remote update(브랜치 업데이트) -> git checkout 브랜치명 -> git add . -> git commit 이후 밑에 -> git push
업데이트 시 git checkout 그 브랜치 ->git add .-> git commit --amend -> git push -f

git commit -m "[AVNG5WIDEH-47348][CCS] 언어별 날짜 표시 정의_CCS캘린더 "


[G5W][AVNG5WIDE-378896(지라 넘버)][Calendar][CCS] 성능개선 테스트
이슈내용 : 언어 수정
원인 / 대책 (Root cause / Couter measure) : 
변경점 (Change detail) : 

crtl+x  => y => 엔터
//////////////////////////////////////
커밋 실수 시 --> git commit --amend -> crtl+x  => y => 엔터 ->git push -f
//////////////////////////////////////
리브랜치 git remote update -> git checkout 브랜치명 ->git add . -> git commit ->~~ ->git push
//////////////////////////////////////////
pr하는 내용 
[G5W][AVNG5WIDE-378896(지라 넘버)][Calendar][CCS] 성능개선 테스트
이슈 내용 - 성능개선 테스트- 변경점 : 
원인 / 대책 (Root cause / Couter measure) : 
변경점 (Change detail) : 



/////////////////////

onConfigurationChanged 테스트
  adb shell am broadcast -a com.radio_test.intent.action.DAY
  adb shell am broadcast -a com.radio_test.intent.action.NIGHT
onNewIntent 테스트
  adb shell am broadcast -a com.mobis.intent.action.CALENDAR_SHORTCUT

////////////

https://confluence.mobis.co.kr/pages/viewpage.action?pageId=339971088
다운로드하다 뻗는사람들 이거한번해보세요
//////////////
이제영 DT096044@mobis-partners.com   Mobis044!
///
adb 최초 
adb shell am startservice -n com.hkmc.telematics.apps.Vrm.main/com.hkmc.telematics.apps.Vrm.settings.ui.AdvanceOTAService --ez test true --ez com.hkmc.telematics.service.Vrm.settings.ui.Advance.extra.NEED_OTA false
//////////
build_adb.bat
adb remount
adb push ./HKMC_TAppSafetyAndSecurity.apk /system/app
adb shell sync
adb reboot


/////

service < -- db 처리 및 permission 
util < -- 전체적인 util
db_util < -- 디비 건드리는곳 (flutter service)

main<- 
display < -  
event detail < - 클릭했을때
receiver < - popup 알림(그 시간에따른)

////////////////////////////////////////////
 service (aidl) -> TAppService -> calendarlooper -> mgr -> httprequestbuilder -> mofGen2Sender

rquest   ::::: service ---> executeCalendarService  ----> looper --->  mgr/httprequestbuilder -> mogGen2Sender//
response ::::: TappService -> calendarlooper -> calendarJsonReceiver ---> ResponseCalendarAccountInfoMgr //
//////////////////////////////////////////////////

synchronized <- 쓰레드 우선순위생김

http://10.230.113.209:8080/source/xref/GEN5_DOLPHIN/packages/apps/




https://confluence.mobis.co.kr/login.action?os_destination=%2Fpages%2Fviewpage.action%3FpageId%3D42926104&permissionViolation=true
file:///D:/02_Project/09_%EA%B3%B5%ED%86%B5%20%EC%82%AC%EC%96%91%EC%84%9C/02_%EC%84%BC%ED%84%B0%ED%94%84%EB%A1%9C%ED%86%A0%EC%BD%9C/%EB%82%B4%EC%88%98/Korea_TMS_Protocol_1.22.0.3-ALL/TMS_index.html
http://10.230.113.209:8080/source/


mobaxterm
beyondcompare
clcl
logfilter
//////////////
service -> kia connect 켤때 initbluelink() 에서 처음 실행

///////
UCS A

사용자 프로필 정보던지고 ->  캘린더 정보 응답 받기

///////
UCS B





//////////
UCS C



                   MSG_REQUST_ACCOUNT_RUNNING  mRequestCalendarAccountInfoMgr
MSG_REQUST_EVENT_RUNNING   mRequestCalendarEventInfoMgr


     EventForObject mEventForObject = new EventForObject();
                mEventForObject.name = CalendarDefine.CALENDAR_REQUST_ACCOUNT_TO_CENTER;
                mEventForObject.nData1 = type;
                putEvent(mEventForObject, CalendarDefine.MSG_REQUST_ACCOUNT);

TAppService

  if (ModelFeature.isSupportCalendar()) {
            mHSCanApi.iLog(DBG_TAG, "===========> onCreate Support Calendar");
            mCalendarLooper = new CalendarLooper(mService);
            mCalendarLooper.startEventLooperThread();
        } else {
            mHSCanApi.iLog(DBG_TAG, "===========> onCreate Not Support Calendar");
        }
        
looper 초기화 및 쓰레드시작

  Thread thread = new Thread(null, initMofGen2, "Background");
        thread.start();

               Intent intent = new Intent(TAppDefine.ACTION_TAS_IS_READY);  == com.hkmc.intent.action.TAS_IS_READY
                    mContext.sendBroadcast(intent);
또는 looper에서 addfilter(USER_LOGIN)
calendar receiver START SERVICE 실행
 --> account를 체크 , event를 체크 --->다 있으면 --> ucs a 실행~~~~~-> sendResult -> CALENDAR_INFO_FROM_CENTER_ACTION(broadcast)되고 -> ucs b 동작

com.hkmc.telematics.apps.calendar.calendar_popup


