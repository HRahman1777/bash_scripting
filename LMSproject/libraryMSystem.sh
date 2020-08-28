#!/bin/bash

mainG(){
clear
echo -e "\n\n\n\n\t|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||\n"
echo -e "\t|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||\n"
echo -e "\t||||||================|~~~~~~~~~~~~~~~~~~~~~~~~~~~|================||||||\n"
echo -e "\t|||||   ||============| LIBRARY MANAGEMENT SYSTEM |============||   |||||\n"
echo -e "\t||||    ||============|~~~~~~~~~~~~~~~~~~~~~~~~~~~|============||    ||||\n"
echo -e "\t|||     ||=====================================================||     |||\n"
echo -e "\t||      ||===================== MAIN MENU =====================||      ||\n"
echo -e "\t|       ||====|                                           |====||       |\n"
echo -e "\t\t||====|                   1.Admin                 |====||\n"
echo -e "\t\t||====|                   2.Viewer                |====||\n"
echo -e "\t\t||====|                   3.About                 |====||\n"
echo -e "\t\t||====|                                           |====||\n"
echo -e "\t\t||====|                    0. Exit                |====||\n"
echo -e "\t\t||====|                                           |====||\n"
echo -e "\t\t||=====================================================||\n"
echo -e "\t\t||=====================================================||\n"
}

books()
{
clear
echo -e "\t\t||=======================  Books ====================||\n"
echo -e "\t\t 1. Operation System \n"
echo -e "\t\t 2. Computer Fundamentals \n"
echo -e "\t\t 3. Algorithm \n"

echo -e "\n\t\t  0. Home  \n"
read -p "Enter: " ck
if [ $ck -eq 0 ]
then main
else
echo "wrong choice !!"
sleep 0.5
books
fi

}

adminPanel(){
clear
echo -e "\t\t||=======================  Admin Panel ====================||\n"
echo -e "\n\t\t  1. View All books  \n"
echo -e "\n\t\t  2. Edit Books  \n"
echo -e "\n\t\t  0. Home  \n"
read -p "         Enter Choice: " ch
if [ $ch -eq 1 ]
then books
elif [ $ch -eq 2 ]
then books
else
main
fi
}

adminLogin(){
clear
echo -e "\t\t||=======================  AdminLogin ====================||\n"
read -p " Username: " username
read -p " Password: " password
match="admin"
if [ "$username" = "$match" ] && [ "$password" = "$match" ]
then adminPanel
else
echo -e "\n Wrong username/password!! \n"
sleep 1
main
fi
}

feedback(){
clear
echo -e "\t\t||=======================  Viewers Feedback ====================||\n"
read -p "Please Enter Your Feedback: " feed
echo -e "\\n\t\tThanks for Your Feedback!!\n"
sleep 1
main
}

viewers()
{
clear
echo -e "\t\t||=======================  Viewer ====================||\n"
echo -e "\n\t\t  1. View All books  \n"
echo -e "\n\t\t  2. Feedback  \n"
echo -e "\n\t\t  0. Home  \n"
read -p "\n\t\t         Enter Choice: " ch
if [ $ch -eq 1 ]
then books
elif [ $ch -eq 2 ]
then feedback
else
main
fi
}

about()
{
clear
echo -e "\t\t||===================== LIBRARY MANAGEMENT SYSTEM ==================||\n" 
echo -e "\t\t||=====================            About          ==================||\n\n\n"
echo -e "\t\t||=================             Developed By          ==============||\n"
echo -e "\t\t||=================            Hasibur Rahman         ==============||\n" 
echo -e "\n\t\t  0. Home  \n"
read -p "Enter: " ck
if [ $ck -eq 0 ]
then main
else
echo "wrong choice !!"
sleep 0.5
about
fi
}

end()
{
clear
echo -e "\t\t||===================== LIBRARY MANAGEMENT SYSTEM ==================||\n" 
echo -e "\t\t\t\t\t\tThank You"
sleep 1
}

choice()
{
read -p "||     ===============           Enter Choice: " ch
if [ $ch -eq 1 ]
then adminLogin
elif [ $ch -eq 2 ]
then viewers
elif [ $ch -eq 3 ]
then about
elif [ $ch -eq 0 ]
then end
else
echo -e "\nPlease Enter valid choice !!\n"
choice
fi
}

main()
{
mainG
choice
}

main
