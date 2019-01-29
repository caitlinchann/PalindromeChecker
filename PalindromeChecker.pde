public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String backwards = reverse(word);
  if(backwards.equals(word))
    return true;

  String word2 = onlyLetters(word);
  String word3 = noCapitals(word2);
  if(word3.equals(reverse(word3)))
    return true;
  else if(word3.equals(backwards))
    return true;
  return false;
}
String reverse(String str)
{
    String sNew = new String();
    sNew = "";
  int last = str.length()-1;
    for(int i = last; i>=0; i--)
      sNew = sNew + str.substring(i,i+1);
    return sNew;
}
public String onlyLetters(String sString)
{
  String letter = "";
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)) == true)
      letter = letter  + sString.substring(i,i+1);
    return letter;
}
public String noCapitals(String sWord)
{
  return sWord.toLowerCase();
}

