#include <iostream>
#include<string>
using namespace std;


double totalcropyield(double landArea, double yieldPerUnitArea);

void winter(){
	string months[12]= {"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"};

  string peas = "+ + + + + + + + ", wheat=" - - - - - - - -", potatoes ="* * * * * * * * ";
  double landArea, yieldPerUnitArea;
 for(int i= 0; i<12; i++){
 
  if(months[i]== months[3] || months[i] == months[4]){
  
   cout<<"Plant the following in "<<months[i]<<endl;
   cout<<peas<<endl;
   cout<<wheat<<endl;
   cout<<potatoes<<endl;
   }
    if (months[i]==months[0] || months[i]== months[1] || months[i]== months[2]){
   	cout<<months[i]<<"harvest "<<endl;
   	cout<<peas<<endl;
   	cout<<wheat<<endl;
   	cout<<potatoes<<endl;
   //	while(i<3){
	   
   //	cout<< totalcropyield(landArea,yieldPerUnitArea)<<endl;
  // }
     }
}
}
void summer(){
	string months[12]= {"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"};
	double landArea, yieldPerUnitArea;
	 string peas = "+ + + + + + + + ", wheat=" - - - - - - - -", potatoes ="* * * * * * * * ";
  string maize = " ~ ~ ~ ~ ~ ~ ~ ~ ~",beans ="@ @ @ @ @ @ @ @ @",pumpkin = "$ $ $ $ $ $ $ $", sorghum = "% % % % % % % %", watermelons= "# # # # # # # #";
  string groundnuts= "& & & & & & & &";
  for( int i= 0; i<12; i++){
  
   if(months[i]== months[7] || months[i] == months[8] || months[i] == months[9]){
   	cout<<"plant the following in "<<months[i]<<endl;
   	cout<<peas<<endl<<maize<<endl<<wheat<<endl<<beans<<endl<<potatoes<<endl<<pumpkin<<endl<<sorghum<<endl<<watermelons<<endl<<groundnuts<<endl;
 
   }
   	if (months[i]==months[10] || months[i]== months[11]){
   		cout<<months[i]<<" harvest"<<endl;
   		cout<<maize<<endl<<beans<<endl<<pumpkin<<endl<<sorghum<<endl<<watermelons<<endl<<groundnuts<<endl;
   	}

   }
}
int soil_prep(){
   int soil_fertility, moisture, plot_area;
   cout<<"Enter soil fertility on a scale of 1- 5"<<endl;
   cin>>soil_fertility;
   cout<<"Enter plot moisture on a scale of 1-5"<<endl;
   cin>>moisture;
   cout<<"enter plot area"<<endl;
   cin>>plot_area;
   int soil_quality = soil_fertility * moisture*plot_area;
   cout<<"The soil Quality is:"<<soil_quality<<endl;
   return soil_quality;
   
}
void timing(){
	int num;
	cout<<"Enter time of the year to be simulated: "<<endl<<"1. Winter"<<endl<<"2. Summer"<<endl;
	cin>>num;
	if(num == 1){
		winter();
	}
	else if (num==2){
		summer();
	}
	else
	cout<<"Enter correct option"<<endl;
}
void planting(){
	int num, amount;
	double ratio = 1;
	char crop,inter[3];
	
	cout<<"WINTER CROPS:"<<endl<<"1. peas: +"<<"\t"<<"2. wheat: -"<<"\t"<<"3. potatoes: *"<<endl;
	cout<<"SUMMER CROPS:"<<endl<<"4.maize: ~"<<"\t"<<"5. beans: @ "<<"\t"<<"6.pumpkin: $"<<"\t"<<"7.sorghum: %"<<endl<<"8.watermelon: #"<<"\t"<<"9.groundnuts: &"<<endl;
    cout<<"Enter crop to be planted? use symbol "<<endl;
	cin>>crop;
    cout<<"Enter amount to be planted:"<<endl;
    cin>>amount;
    cout<<"Enter number of crops to be intercroped. MAX 3 "<<endl;
    cin>>num;
    cout<<"enter symbol for intercroping crops. NB: NOT MORE THAN 3"<<endl;
    for(int i=0; i<num; i++){
    	cout<<"enter crop  :"<<endl;
    	cin>>inter[i];
    }
   
    cout<<crop<<"\t"<<crop<<"\t"<<crop<<"\t"<<crop<<"\t"<<crop<<"\t"<<crop<<endl;
    cout<<inter[0]<<"\t"<<inter[0]<<"\t"<<inter[0]<<"\t"<<inter[0]<<"\t"<<inter[0]<<endl;
    cout<<crop<<"\t"<<crop<<"\t"<<crop<<"\t"<<crop<<"\t"<<crop<<"\t"<<crop<<endl;
    cout<<inter[1]<<"\t"<<inter[1]<<"\t"<<inter[1]<<"\t"<<inter[1]<<"\t"<<inter[1]<<endl;
    cout<<crop<<"\t"<<crop<<"\t"<<crop<<"\t"<<crop<<"\t"<<crop<<"\t"<<crop<<endl;
    cout<<inter[2]<<"\t"<<inter[2]<<"\t"<<inter[2]<<"\t"<<inter[2]<<"\t"<<inter[2]<<endl;
   
}
double harvesting(){
	int harvest;
	double ratio;
	int soil_Quality = soil_prep();
	cout<<"enter ratio of intercropping: "<<endl;
	cin>>ratio;
	double yield = soil_Quality * ratio;
	cout<<"the expected yield is: "<<yield<<endl;
	return yield;
}


int main(){
	cout<<"MACHOBANE FARMING SYSTEM MENU"<<endl;
	cout<<"WINTER CROPS:"<<endl<<"peas: +"<<endl<<"wheat: -"<<endl<<"potatoes: *"<<endl;
	cout<<"SUMMER CROPS:"<<endl<<"maize: ~"<<endl<<"beans: @ "<<endl<<"pumpkin: $"<<endl<<"sorghum: %"<<endl<<"watermelon: #"<<endl<<"groundnuts: &"<<endl;
	cout<<"FUNCTIONS: "<<endl;
	int option;
	
   	 do {
	
	cout<<"1. Timing: Summer or Winter"<<"\t"<<"2. Soil Preparation: Moisture, Fertility, plot size"<<endl;
	cout<<"3.Planting: crop? Quantity? Intercroped?"<<"\t"<<"4. Harvesting: yeild measure"<<endl;
	cout<<"5.press 0 to exit"<<endl;
	
	
	cout<<"Enter the number of action you want to perform"<<endl;
	
	cin>>option;
	
	
	
	switch (option)
		
	{
	case 1:
		timing();break;
		
	case 2:
	   soil_prep();break;
	case 3:
	    planting();break;
	case 4:
	    harvesting();break;
	case 5:
	  break;		   	
		
	}}
	while (option <5 );


	return 0;
}