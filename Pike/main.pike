// cerner_2^5_2017
int main(int argc, array(string) argv)
{
  float shoulder;
  float waist;
  if (argc == 3){
    shoulder = (float)argv[1];
    waist = (float)argv[2];
  }
  else             
  {                
    write("You did not enter shoulder and waist. \n");
    write("Asumming shoulder:48 inches and waist:32 inches");
    shoulder = 48.0;
    waist = 32.0;
  }              
  write("\n");
  write("Your Ratio: " + shoulder/waist);
  write("\n");
  write("Golden Ratio: " + 1.6);
  return 0;
}