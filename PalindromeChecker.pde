public void setup()
{
  String lines[] = {"test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(translatedWord(lines[i]))==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String reverse = new String("");
  for (int i = word.length(); i >= 1; i--)
    reverse = reverse + word.substring(i-1, i);
  if (reverse.equals(word))
    return true;
  return false;
}
public String translatedWord(String str){
  return(noSpaces(noCapitals(onlyLetters(str))));
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String noSpaces(String sWord){
String noSpaces = "";
for (int i = 0; i < sWord.length(); i++){
  if (sWord.substring(i, i+1).equals(" "))
    noSpaces = noSpaces + "";
  else 
    noSpaces = noSpaces + sWord.substring(i, i+1);
}
return noSpaces;
}
public String onlyLetters(String sString){
  String onlyLetters = "";
  for (int i = 0; i < sString.length(); i++){
    if (Character.isLetter(sString.charAt(i)))
      onlyLetters = onlyLetters + sString.substring(i, i+1);
  }
  return onlyLetters;
}
