import mysql.connector
db=mysql.connector.connect(host="localhost",user="root",passwd="root",database="pritam")
cur=db.cursor()
def reg():
    for i in range(0,999):
        print("____________________________________________________")
        print("**********WELCOME TO UNION BANK OF INDIA**********")
        print("____________________________________________________")
        print(" MAIN MENU".center(60))
        print("1.Insert Record/Records".center(60))
        print("2.Display Records as per Account Number/Contactno.".center(65))
        #print("A.Sorted as per Account Number".center(65))
        #print("B.Sorted as per Customer Number".center(65))
        #print("C.Sorted as per Customer Balance".center(65))
        print("3.Search Record Details as per the Account Number".center(65))
        print("4.Update Record".center(50))
        print("5.Delete Record".center(50))
        print("6.Transactions Debit/Withraw from the account".center(60))
        print("7.Exit".center(50))

        choice1=int(input("ENTER YOUR CHOICE: "))
        if choice1==1:
            name=input("NAME=")
            emailid=input("EMAILID=")
            passwd=int(input("PASSWORD="))
            print("**MINIMUM BALANCE SHOULD BE 2000RS**".center(50))
            bal=int(input("BALANCE="))
            contact=int(input("CONTACT="))
            address=input("ADDRESS=")       
            sql=("insert into records(NAME,EMAIL_ID,PASSWORD,BALANCE,CONTACT,ADDRESS)values(%s,%s,%s,%s,%s,%s)")
            var=(name,emailid,passwd,bal,contact,address)
            cur.execute(sql,var)
            db.commit()
            print("RECORDS INSERTED SUCCESSFULLY")
        elif choice1==2:
            print("A.Sorted as per Account Number".center(65))
            print("B.Sorted as per Customer Number".center(65))
            print("C.Sorted as per Customer Balance".center(65))
            
            print("__________________________________________________".center(50))
            print("*NOTE:ENTER THE OPTIONS IN CAPITAL LETTER".center(50))
            #print("__________________________________________________".center(50))
            
            choice2=input("SELECT YOUR OPTIONS:")
            
            if choice2=="A":
                accountno=int(input("ENTER YOUR ACCOUNT NO.="))
                cur.execute("select ACCOUNT_NO,NAME,BALANCE,CONTACT,ADDRESS from records where ACCOUNT_NO=%s",(accountno,))
                for j in cur:
                    print(j)
                
            elif choice2=="B":
                cur.execute("select ACCOUNT_NO,NAME,BALANCE,CONTACT,ADDRESS from records order by NAME")
                for j in cur:
                    print(j)
                
            elif choice2=="C":
                
                cur.execute("select ACCOUNT_NO,NAME,BALANCE,CONTACT,ADDRESS from records order by balance")
                for j in cur:
                    print(j)
            else:
                print("ENTER VALID OPTIONS")
        
        elif choice1==3:
            print("PRESS KEY :1).ACCOUNT NUMBER \n 2).CONTACT NUMBER")
            key=int(input("ENTER KEY:"))
            if key==1:
                accountno=int(input("ENTER YOUR ACCOUNT NUMBER:"))
                cur.execute("select * from records where ACCOUNT_NO=%s",(accountno,))
                for j in cur:
                    print(j)
                
                
            elif key==2:
                contactno=int(input("ENTER YOUR CONTACT NUMBER:"))
                cur.execute("select * from records where CONTACT=%s",(contactno,))
                for j in cur:
                    print(j)
            else:
                print("INVALID KEY")
        
        elif choice1==4:
            update=input("ENTER THE COLUMN TO EDIT:")
            if update=="NAME" or "name":
                name=input("ENTER NEW NAME:")
                accountno=int(input("ENTER YOUR ACCOUNT NO.:"))
                cur.execute("update records set NAME=%s where ACCOUNT_NO=%s",(name,accountno))
                print("UPDATED SUCCESSFULLY")
            elif update=="ADDRESS":
                address=input("ENTER NEW ADDRESS:")
                accountno=int(input("ENTER YOUR ACCOUNT NO.:"))
                cur.execute("update records set ADDRESS=%s where ACCOUNT_NO=%s",(address,accountno))
                db.commit()
                print("UPDATED SUCCESSFULLY")
            elif update=="EMAIL_ID":
                emailid=input("ENTER EMAILID:")
                accountno=int(input("ENTER YOUR ACCOUNT NO.:"))
                cur.execute("update records set EMAIL_ID=%s where ACCOUNT_NO=%s",(emailid,accountno))
                print("UPDATED SUCCESSFULLY")
            elif update=="PASSWORD":
                passwd=int(input("ENTER NEW PASSWORD:"))
                accountno=int(input("ENTER YOUR ACCOUNT NO.:"))
                cur.execute("update records set PASSWORD=%s where ACCOUNT_NO=%s",(passwd,accountno))
                print("UPDATED SUCCESSFULLY")
            elif update=="CONTACT":
                contactno=int(input("ENTER NEW CONTACT:"))
                accountno=int(input("ENTER YOUR ACCOUNT NO.:"))
                cur.execute("update records set CONTACT=%s where ACCOUNT_NO=%s",(contactno,accountno))
                print("UPDATED SUCCESSFULLY")
            elif update=="ACCOUNT_NO":
                print("ACCOUNT NO CANNOT BE UPDATED")
            else:
                print("NO COLUMN EXISTS")
            db.commit()
        elif choice1==5:
            accountno=int(input("ENTER YOUR ACCOUNT NO.:"))
            cur.execute("select * from records")
            if accountno in cur:
                cur.execute("delete from records where ACCOUNT_NO=%s",(accountno,))
                print("ACCOUNT DELETED SUCCESSFULLY")
            else:
                print("NO SUCH ACCOUNT NUMBER EXISTS")
        elif choice1==6:
            print("A.Debit/Withraw from the account".center(65))
            print("B.Credit into the account".center(65))
            choice3=input("Enter your option:")
            if choice3=="A":
                accountno=int(input("ENTER YOUR ACCOUNT NUMBER:"))
                passwd=int(input("ENTER YOUT PASSWORD:"))
                cur.execute("select ACCOUNT_NO,PASSWORD from records WHERE ACCOUNT_NO=%s",(accountno,))
                for i in cur:
                    if accountno and passwd in i:
                        withraw=int(input("ENTER AMOUNT TO WITHRAW ="))
                        cur.execute("select balance from records where ACCOUNT_NO=%s",(accountno,))
                        for j in cur:
                            if withraw>j[0]:
                                print("INSUFFICIENT BALANCE")
                                break
                            else:
                                total=j[0]-withraw
                                print("Available Balance is: ₹",total)
                                cur.execute("update records set BALANCE=%s where ACCOUNT_NO=%s",(total,accountno))
                                db.commit()
                        print("WITHDRAWAL SUCCESSFUL")
                    else:
                        print("INCORRECT CREDENTIALS")
            if choice3=="B":
                accountno=int(input("ENTER YOUR ACCOUNT NUMBER:"))
                passwd=int(input("ENTER YOUR PASSWORD:"))
                cur.execute("select ACCOUNT_NO,PASSWORD from records WHERE ACCOUNT_NO=%s",(accountno,))
                for i in cur:
                    if accountno and passwd in i:
                        credit=int(input("ENTER AMOUNT TO DEPOSIT="))
                        cur.execute("select balance from records where ACCOUNT_NO=%s",(accountno,))
                        for j in cur:
                            total=j[0]+credit
                            print(total)
                            cur.execute("update records set BALANCE=%s where ACCOUNT_NO=%s",(total,accountno))
                            db.commit()
                        print("CREDITED SUCCESSFUL")
        
        elif choice1==7:
            print("THANK YOU!! VISIT AGAIN".center(60))
            break


reg()


