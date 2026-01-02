#นายสุทธิภัทร รสหอม 663380241-1 Sec.1
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOMEPAGE}    http://localhost:7272/Lab4/Registration.html
${BROWSER}     Chrome

*** Test Cases ***
Register Success:
     # เปิด Browser
    Open Workshop Registration Page:

    # กรอกฟอร์ม
    Input Text    name=firstname     Somsri
    Input Text    name=lastname      Sodsai
    Input Text    name=organization  CS KKU
    Input Text    name=email         somsri@kkumail.com
    Input Text    name=phone         091-001-1234

    # กดปุ่ม Register
    Click Button    Register

    # ตรวจสอบ Title
    Title Should Be    Success

    # ตรวจสอบข้อความบนหน้า
    Page Should Contain    Thank you for registering with us
	Page Should Contain    We will send a confirmation to your email soon

    # ปิด browser
    Close Browser

Register Success No Organization Info:
    # เปิด Browser
	Open Workshop Registration Page:

    # กรอกฟอร์ม
    Input Text    name=firstname     Somyod
    Input Text    name=lastname      Sodsai
    Input Text    name=email         somyod@kkumail.com
    Input Text    name=phone         091-001-1234

    # กดปุ่ม Register
    Click Button    Register

    # ตรวจสอบ Title
    Title Should Be    Success

    # ตรวจสอบข้อความบนหน้า
    Page Should Contain    Thank you for registering with us
	Page Should Contain    We will send a confirmation to your email soon

    # ปิด browser
    Close Browser
	
Empty First Name:
    # เปิด Browser
	Open Workshop Registration Page:

    # กรอกฟอร์ม
    Input Text    name=lastname      Sodyod
	Input Text    name=organization  CS KKU
    Input Text    name=email         somyod@kkumail.com
    Input Text    name=phone         091-001-1234

    # กดปุ่ม Register
    Click Button    Register

    # ตรวจสอบ Title
    Title Should Be    Registration

    # ตรวจสอบข้อความบนหน้า
    Page Should Contain    Please enter your first name!!

    # ปิด browser
    Close Browser
	
Empty Last Name:
    # เปิด Browser
	Open Workshop Registration Page:

    # กรอกฟอร์ม
    Input Text    name=firstname     Somyod
	Input Text    name=organization  CS KKU
    Input Text    name=email         somyod@kkumail.com
    Input Text    name=phone         091-001-1234

    # กดปุ่ม Register
    Click Button    Register

    # ตรวจสอบ Title
    Title Should Be    Registration

    # ตรวจสอบข้อความบนหน้า
    Page Should Contain    Please enter your last name!!

    # ปิด browser
    Close Browser
	
Empty First Name and Last Name:
    # เปิด Browser
	Open Workshop Registration Page:

    # กรอกฟอร์ม
	Input Text    name=organization  CS KKU
    Input Text    name=email         somyod@kkumail.com
    Input Text    name=phone         091-001-1234

    # กดปุ่ม Register
    Click Button    Register

    # ตรวจสอบ Title
    Title Should Be    Registration

    # ตรวจสอบข้อความบนหน้า
    Page Should Contain    Please enter your name!!

    # ปิด browser
    Close Browser
	
Empty Email:
    # เปิด Browser
	Open Workshop Registration Page:

    # กรอกฟอร์ม
    Input Text    name=firstname     Somyod
    Input Text    name=lastname      Sodsai
	Input Text    name=organization  CS KKU
    Input Text    name=phone         091-001-1234

    # กดปุ่ม Register
    Click Button    Register

    # ตรวจสอบ Title
    Title Should Be    Registration

    # ตรวจสอบข้อความบนหน้า
    Page Should Contain    Please enter your email!!

    # ปิด browser
    Close Browser
	
Empty Phone Number:
    # เปิด Browser
	Open Workshop Registration Page:

    # กรอกฟอร์ม
    Input Text    name=firstname     Somyod
    Input Text    name=lastname      Sodsai
	Input Text    name=organization  CS KKU
    Input Text    name=email         somyod@kkumail.com

    # กดปุ่ม Register
    Click Button    Register

    # ตรวจสอบ Title
    Title Should Be    Registration

    # ตรวจสอบข้อความบนหน้า
    Page Should Contain    Please enter your phone number!!

    # ปิด browser
    Close Browser
	
Invalid Phone Number:
    # เปิด Browser
	Open Workshop Registration Page:

    # กรอกฟอร์ม
    Input Text    name=firstname     Somyod
    Input Text    name=lastname      Sodsai
	Input Text    name=organization  CS KKU
    Input Text    name=email         somyod@kkumail.com
	Input Text    name=phone         1234

    # กดปุ่ม Register
    Click Button    Register

    # ตรวจสอบ Title
    Title Should Be    Registration

    # ตรวจสอบข้อความบนหน้า
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)

    # ปิด browser
    Close Browser

*** Keywords ***
Open Workshop Registration Page:
	Open Browser    ${HOMEPAGE}    ${BROWSER}
	
	# ตรวจสอบ Title
	Title Should Be    Registration