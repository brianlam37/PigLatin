import java.util.*;

public void setup() {
  String lines[] = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
}


public int findFirstVowel(String sWord) {
  for (int i=0; i<sWord.length(); i++)
  {

    String vow= sWord.substring(i, i+1);


    if (vow.equals("a")||vow.equals("e")||vow.equals("i")||vow.equals("o")||vow.equals("u"))
    {
      return i;

    }
    if(vow.equals("q") && i==0)
    {
    	return -2;
    }


    
  }
return -1;
}

public String pigLatin(String sWord)
  //precondition: sWord is a valid String of length greater than 0
  //postcondition: returns the pig latin equivalent of sWord
{
 if (findFirstVowel(sWord)==0)
  {
    return sWord+ "way";
  }
 if (findFirstVowel(sWord) ==-2)
  {
    return sWord.substring(2) + "quay";
  }
 if(findFirstVowel(sWord)==-1)
 {
 	return sWord+"ay";
 }else
  {
    return sWord.substring(findFirstVowel(sWord)) +sWord.substring(0,findFirstVowel(sWord))+ "ay";
  }

}
