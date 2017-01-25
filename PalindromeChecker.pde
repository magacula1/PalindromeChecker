public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String koi = noSpaces(word);
  koi = noCapitals(koi);
  koi = numLetters(koi);

  if(koi.equals(reverse(koi)))
  {
    return true;
  }
  else 
  {
    return false;
  }
 
  
}
public String reverse(String str)
{
  String sNew = new String();
  int last = str.length()-1;
  
  for(int i = last; i >= 0; i--)
    sNew = sNew + str.substring(i,i+1);
  return sNew;
}
public String noCapitals(String sWord)
{
  return sWord.toLowerCase();
}
public String noSpaces(String sWord)
{
  String a = new String();
  
  for(int i=0; i < sWord.length(); i++)
    if(Character.isLetter(sWord.charAt(i)) == true)
      a = a + sWord.charAt(i);
  return a;
}
public String numLetters(String sString)
{
 if(sString.length() == 0)
  return "";
else if(Character.isLetter(sString.charAt(0)))
  return sString.charAt(0) + numLetters(sString.substring(1));
else
  return numLetters(sString.substring(1));
}


