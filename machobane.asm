#----------------------------------------------------------------
#Title: Machobane Farming System
# Group: Computer cracker
#contact: leratomokuku0@gmail.com
#---------------------------------------------------------------
# IMPLEMENTATION IN C++
##include <iostream>
#include<string>
#using namespace std;


#double totalcropyield(double landArea, double yieldPerUnitArea);

#void winter(){
#	string months[12]= {"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"};

#  string peas = "+ + + + + + + + ", wheat=" - - - - - - - -", potatoes ="* * * * * * * * ";
#  double landArea, yieldPerUnitArea;
# for(int i= 0; i<12; i++){
 
#  if(months[i]== months[3] || months[i] == months[4]){
  
#   cout<<"Plant the following in "<<months[i]<<endl;
#   cout<<peas<<endl;
#   cout<<wheat<<endl;
#   cout<<potatoes<<endl;
#   }
#    if (months[i]==months[0] || months[i]== months[1] || months[i]== months[2]){
#   	cout<<months[i]<<"harvest "<<endl;
#   	cout<<peas<<endl;
#   	cout<<wheat<<endl;
#   	cout<<potatoes<<endl;
#  
#     }
#}
#}
#void summer(){
#	string months[12]= {"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"};
#	double landArea, yieldPerUnitArea;
#	 string peas = "+ + + + + + + + ", wheat=" - - - - - - - -", potatoes ="* * * * * * * * ";
#  string maize = " ~ ~ ~ ~ ~ ~ ~ ~ ~",beans ="@ @ @ @ @ @ @ @ @",pumpkin = "$ $ $ $ $ $ $ $", sorghum = "% % % % % % % %", watermelons= "# # # # # # # #";
#  string groundnuts= "& & & & & & & &";
#  for( int i= 0; i<12; i++){
  
#   if(months[i]== months[7] || months[i] == months[8] || months[i] == months[9]){
#   	cout<<"plant the following in "<<months[i]<<endl;
#   	cout<<peas<<endl<<maize<<endl<<wheat<<endl<<beans<<endl<<potatoes<<endl<<pumpkin<<endl<<sorghum<<endl<<watermelons<<endl<<groundnuts<<endl;
 
#   }
#   	if (months[i]==months[10] || months[i]== months[11]){
#   		cout<<months[i]<<" harvest"<<endl;
#  		cout<<maize<<endl<<beans<<endl<<pumpkin<<endl<<sorghum<<endl<<watermelons<<endl<<groundnuts<<endl;
#   	}

#   }
#}
#int soil_prep(){
#   int soil_fertility, moisture, plot_area;
#   cout<<"Enter soil fertility on a scale of 1- 5"<<endl;
#   cin>>soil_fertility;
#   cout<<"Enter plot moisture on a scale of 1-5"<<endl;
#   cout<<"enter plot area"<<endl;
#   cin>>plot_area;
#  int soil_quality = soil_fertility * moisture*plot_area;
#   cout<<"The soil Quality is:"<<soil_quality<<endl;
#   return soil_quality;
#   
#}
#void timing(){
#	int num;
#	cout<<"Enter time of the year to be simulated: "<<endl<<"1. Winter"<<endl<<"2. Summer"<<endl;
#	cin>>num;
#	if(num == 1){
#		winter();
#	}
#	else if (num==2){
#		summer();
#	}
#	else
#	cout<<"Enter correct option"<<endl;
#}
#void planting(){
#	int num, amount;
#	double ratio = 1;
#	cout<<"Enter crop to be planted? "<<endl;
#	cout<<"WINTER CROPS:"<<endl<<"1. peas: +"<<"\t"<<"2. wheat: -"<<"\t"<<"3. potatoes: *"<<endl;
#	cout<<"SUMMER CROPS:"<<endl<<"4.maize: ~"<<"\t"<<"5. beans: @ "<<"\t"<<"6.pumpkin: $"<<"\t"<<"7.sorghum: %"<<endl<<"8.watermelon: #"<<"\t"<<"9.groundnuts: &"<<endl;
#    cin>>num;
#    cout<<"Enter amount to be planted:"<<endl;
#    cin>>amount;
#    cout<<"Enter ratio for intercroping or relay cropping if any. use decimal numbers"<<endl;
#    cin>>ratio;
#   
#}
#double harvesting(){
#	int harvest;
#	double ratio;
#	int soil_Quality = soil_prep();
#	cout<<"enter ratio of intercropping: "<<endl;
#	cin>>ratio;
#	double yield = soil_Quality * ratio;
#	cout<<"the expected yield is: "<<yield<<endl;
#	return yield;
#}
#
#
#int main(){
#	cout<<"MACHOBANE FARMING SYSTEM MENU"<<endl;
#	cout<<"WINTER CROPS:"<<endl<<"peas: +"<<endl<<"wheat: -"<<endl<<"potatoes: *"<<endl;
#	cout<<"SUMMER CROPS:"<<endl<<"maize: ~"<<endl<<"beans: @ "<<endl<<"pumpkin: $"<<endl<<"sorghum: %"<<endl<<"watermelon: #"<<endl<<"groundnuts: &"<<endl;
#	cout<<"FUNCTIONS: "<<endl;
#	int option;
#	
#  	 do {
#	
#	cout<<"1. Timing: Summer or Winter"<<"\t"<<"2. Soil Preparation: Moisture, Fertility, plot size"<<endl;
#	cout<<"3.Planting: crop? Quantity? Intercroped?"<<"\t"<<"4. Harvesting: yeild measure"<<endl;
#	cout<<"5.press 0 to exit"<<endl;
#	
#	
#	cout<<"Enter the number of action you want to perform"<<endl;
#	
#	cin>>option;
#	
#	  break;		   	
#		
#	}}
#	while (option <5 );
#
#
#	return 0;
#}
.data
    prompt_soil_fertility: .asciiz "Enter soil fertility on a scale ]of 1 - 5: \n"
    prompt_moisture: .asciiz "Enter plot moisture on a scale of 1-5: \n"
    prompt_plot_area: .asciiz "Enter plot area: \n"
    soil_quality_msg: .asciiz "The soil quality is:"
    prompt_crop: .asciiz "Enter crop to be planted: \n"
    prompt_amount: .asciiz "Enter amount to be planted: \n"
    prompt_ratio: .asciiz "Enter for intercropping or relay cropping if any. Use decimal numbers:\n"
    prompt_harvest_ratio: .asciiz "Enter ratio of intercropping: \n"
    expected_yield_msg: .asciiz " The expected yield is:"
    harvesting_prompt: .asciiz " Enter Harvesting measure:"
    plant_summer: .asciiz "Plant the following  summer crops: \n"
    plant_winter: .asciiz "Plant the following wintercrops: \n"
    timing_prompt: .asciiz "Enter time of the year to be simulated: \n 1.Winterb\n 2. Summer\n"
    soil_prep_prompt: .asciiz "Calculation soil quality...\n"
    prompt1: .asciiz"\n WINTER CROPS:\n peas: + \n wheat: - \n potatoes: *\n SUMMER CROPS: \n maize: ~ \n beans: @ \n pumpkin:$ \n sorghum: % \n watermelon: # \n groundnuts: &\n FUNCTIONS: \n"
    prompt2: .asciiz "Enter crop to be planted"
    enter_crop: .asciiz "Enter crop to be planted? Use symbol:"
    enter_num: .asciiz "Enter number of crops to be intercropped. Max 3:"
    enter_symbol: .asciiz "Enter symbol for intercropping crops. NB: NOT MORE THAN 3:"
    output: .asciiz "\t%s\t%s\t%s\t%s\t%s\n"
    inter: .space 12
    
    months: .asciiz "JanFebMarAprMayJunJulAugSepOctNovDec"
    peas: .asciiz "+ + + + + + + +"
    wheat: .asciiz "- - - - - - - -"
    potatoes: .asciiz "* * * * * * * *"
    maize: .asciiz "~ ~ ~ ~ ~ ~ ~ ~ ~ "
    beans: .asciiz "@ @ @ @ @ @ @ @ @"
    pumpkin: .asciiz "$ $ $ $ $ $ $ $ $"
    sorghum: .asciiz "% % % % % % % % %"
    watermelons: .asciiz "# # # # # # # # #"
    groundnuts: .asciiz "& & & & & & & & & &"
    
    menu: .asciiz " MACHOBANE FARMING SYSTEM MENU\n WINTER CROPS:\n peas: + \n wheat: - \n potatoes: *\n SUMMER CROPS: \n maize: ~ \n beans: @ \n pumpkin:$ \n sorghum: % \n watermelon: # \n groundnuts: &\n FUNCTIONS: \n 1.Timming:Summer or winter \t 2.Soil preparation: Moisture, Fertility, plot size \n 3. PLanting:crop?Quatity? Intercropped?\t 4. Harvesting: yield measure\n 5. Press 0 to exit\n Enter the number of action you want to perform:\n"
    

.text
   
  
  
  .globl main
  main:
  li $v0, 4
  la $a0, menu
  syscall
  main_menu_loop:
  #Get user input
  li $v0, 5
  syscall
  move $t0, $v0
  
  #Branch based on user input
  beq $t0, 0, end_program
  beq $t0,1, timing
  beq $t0,2, soil_prep
  beq $t0,3, planting
  beq $t0,4, harvesting
  #Add more cases for additional functions
  j main_menu_loop # if user enters invalid option return to main
  
  end_program:
  li $v0,10
  syscall
  
  timing:
  #implement timing function
  li $v0, 4
  la $a0, timing_prompt
  syscall
  
  li $v0, 5
  syscall
  move $t0, $v0
  
  beq $t0, 1, winter
  beq $t0,2 , summer
  j main
  #load months array
  la $t2, months
  
  #Load crop strings
  la $t3, peas
  la $t4, wheat
  la $t5, potatoes
  la $t6, maize
  la $t7, beans
  la $t8, pumpkin
  la $t9, sorghum
  la $a0, watermelons
  la $s1, groundnuts
  
  li $t0, 0 # loop counter
  timing_loop:
    beq $t0, 12, main # exit loop
    
    #compare months
    lb $a1, 0($t2) #Load current month
    beq $a1, $t1, print_crop
    
    #Increment loop counter and move to the next month
    addi $t0, $t0, 1
    addi $t2, $t2, 3 # Each month string is 3 characters long
    j timing_loop
  
      j end_timing
      
  print_crop:
    # print crops for the selected months
    li $v0, 4
    la $a0,1($t3) #print peas
    syscall
    
    li $v0, 4
    la $a0, 1($t4) # print wheat 
    syscall
    
    li $v0, 4
    la $a0, 1($t5) # print potatoes 
    syscall 
     
    j timing_loop

  soil_prep:
    #Print prompt for soil fertility
    li $v0, 4
    la $a0, prompt_soil_fertility
    syscall
    
    #Get soil fertility input
    li $v0, 5
    syscall
    move $t6, $v0  # Store soil fertility in $t0
    
    #Print prompt for plot moisture
    li $v0,4
    la $a0, prompt_moisture
    syscall
    #Get plot moisture input
    li $v0, 5
    syscall
    move $t7, $v0 # Store plot moisture in $t1
    
    li $v0, 4
    la $a0, prompt_plot_area
    syscall
    li $v0, 5
    syscall
    move $t8, $v0 # plot area
    
    #Calculate soil quality
    mul $t9, $t6, $t7
    mul $s0, $t9, $t8
    
    #print soil quality
    li $v0, 4
    la $a0, soil_quality_msg
    syscall
    
    li $v0, 1
    move $a0, $s0
    syscall
   
    j main
    
planting:

   li $v0,4
   la $a0, prompt1
   syscall
   
  # Prompt for crop
    li $v0, 4
    la $a0, prompt_crop
    syscall

    # Get crop symbol (assuming a single character)
    li $v0, 12
    syscall
    move $t0, $v0

    # Prompt for amount
    li $v0, 4
    la $a0, prompt_amount
    syscall

    # Get amount
    li $v0, 5
    syscall
    move $t1, $v0

    # Prompt for number of intercrops
    li $v0, 4
    la $a0, enter_num
    syscall

    # Get number of intercrops
    li $v0, 5
    syscall
    move $t2, $v0

    # Prompt for intercrops
    li $v0, 4
    la $a0, enter_symbol
    syscall

    # Get intercrops symbols (assuming a single character for each)
    la $a0, output
    move $a1, $t0
    move $a2, $t0
    move $a3, $t0
    move $k0, $t0
    move $k1, $t0
    jal print_intercrops

    # Print the pattern for the selected crop
    la $a0, output
    move $a1, $t0
    move $a2, $t0
    move $a3, $t0
    move $k0, $t0
    move $k1, $t0
    jal print_intercrops

    # Print the pattern for the intercrops
    la $a0, output
    move $a1, $t0
    move $a2, $t0
    move $a3, $t0
    move $k0, $t0
    move $k1, $t0
    jal print_intercrops

    j main

# Function to print intercrops pattern
print_intercrops:
    li $v0, 4
    syscall
    jr $ra
   	
   
  
  harvesting:
  #IMPLEMENT HARVESTING FUNCTION
  la $a0, soil_prep_prompt
  li $v0, 4
  syscall
  
  #call soil prep to get soil quality
  jal soil_prep
  move $s0, $v0 #store soil quality
  
  la $a0, prompt_ratio
  li $v0, 4
  syscall
  move $s1, $v0
  
  #calculate yield
  mul $s2, $s0, $s1
  
  #display yield
  li $v0, 4
  la $a0, expected_yield_msg
  syscall
  
  li $v0, 1
  move $a0, $s2
  syscall
  
  #return yield
  move $v0, $s2
  jr $ra


    j main
  
winter:
#implement winter functions
    la $t0, months
    la $t1, peas
    la $t2, wheat
    la $t3, potatoes
    
    li $t4,0 #Loop counter
    
    winter_loop:
    beq $t4, 12, main #exit loop after process
    lb $t5, 0($t0) #load current month character
    
    #compare months and check for dec and jan
    beq $t5, 'D', winter_plant
    beq $t5, 'J' winter_plant
    
    
    #increment to next month
    addi $t4, $t4, 1
    addi $t0, $t0, 3 # each month is 3 characters long
    j winter_loop
    
   
    winter_plant:
    # print planting instructions for Mar and April
    li $v0, 4
    la $a0, plant_winter 
    syscall
    
    #print crops
    li $v0, 4
    la $a0, peas
    syscall
    li $v0,4
    la $a0, wheat
    syscall
    
    li $v0, 4
    la $a0, potatoes
    syscall
    
    winter_next_month:
    # Increment index and loop
    addi $t0, $t0, 1
    j winter_loop
   
   winter_exit:
   jr $ra # return
   
   summer:
   
     #implement summer function
     la $t0, months
     la $t1, peas
     la $t2, maize 
     la $t3, wheat 
     la $t4, beans 
     la $t5, potatoes
     la $t6, pumpkin
     la $t7, sorghum
     la $t8,watermelons
     la $t9,groundnuts
     
     li $a2, 0 #loop counter
     
  summer_loop:
     beq $a2, 12, main #exit loop when all months proccesed 
     lb $a1, 0($t0) #load current month character
     
     # check if current month is Aug, Sep, Oct
   
     beq $a1, 'A', summer_plant
     beq $a1, 'S', summer_plant
     beq $a1, 'O', summer_plant
     
     #increment to next month
     addi $a2,$a2,1
     addi $t0,$t0,3
     j summer_loop
     
     j summer_next_month
     
   summer_plant:
   #print planting instructions for Aug, Sep, Oct
       li $v0, 4
       la $a0, plant_summer 
       syscall
       
       #print crops
       li $v0, 4
       la $a0, peas
       syscall
       
       li $v0, 4
       la $a0,maize
       syscall
       
       li $v0, 4
       la $a0, wheat
       syscall 
       
       li $v0, 4
       la $a0, beans
       syscall 
       
       li $v0, 4
       la $a0, potatoes
       syscall
       
       li $v0, 4
       la $a0, pumpkin
       syscall
       
       li $v0, 4
       la $a0, sorghum
       syscall
       
       li $v0, 4
       la $a0, watermelons
       syscall
       
       li $v0, 4
       la $a0, groundnuts
       syscall
       j summer_loop
   summer_next_month:
   #Increment index and loop
   addi $t0, $t0, 1
   
  
  summer_exit: 
  jr $ra #return
  
  
    
    j end_timing

  end_timing:
    j main_menu_loop
    

  
  
