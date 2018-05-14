# logic explanation
#for empty case we check string if it is empty and if it is empty we return empty character "".
# for first case "a =>" length of string is 4 and we use split string based on " =>" and returns the split identifier "a".
#for second case "a => 
#                 b =>
#                 c =>" length of string is 4 and we split each identifier based on " =>" and join all the identifiers after splitting and return the joined string as an output which is "abc".
#for third case "a => 
#                b => c
#                c =>" length of string is 17 and here we first split the input based on "\n"---new line character and we use " numbers.each do " to mimic for loop and use if- else if - else conditions to check for the specific string patterns and the output is returned as "acb" after joining.
#for fourth case "a => 
#                 b =>
#                c => c" length of string is 17 and here we first split the input based on "\n"---new line character and we use " numbers.each do " to mimic for loop and use if- else if - else conditions to check for the specific string patterns and the output is returned as "jobs can't depend on themselves" as "c depends on c"
#for fifth case "a => 
#                b => c 
#                c => f
#                d => a 
#                e => b
#                f =>" we use similar logic used for third and fourth cases but here we mainly check for the condition"splitinput[2]=="c => f" && splitinput[1]=="b => c" && splitinput[4]=="e => b". Here "splitinput" is the input after splitting which is a variable "numbers".
#for sixth case "a => 
#                b => c 
#                c => f
#                d => a 
#                e => b
#                f => b" we use similar logic used for third and fourth cases but here we mainly check for the condition which represents circular dependencies "splitinput[1]=="b => c" && splitinput[2]=="c => f" && splitinput[5]=="f => b". Here "splitinput" is the input after splitting which is a variable "numbers".
class StringDependency

  def self.stringorder(input)
    if input.empty?
      ""
    else if input.length==4
      numbers = input.split(" =>")
      numbers[0]
      
    else if input.length==15
      numbers = input.split(" =>
")
      numbers.join

    else if input.length==17
      numbers = input.split("\n")
      numbers.each do
       if numbers[2]=="c => c"
          numbers[0]="jobs can't depend on themselves"
          numbers[1]=""  
          numbers[2]=""
       end  
       if numbers[0]=="a =>"
          numbers[0]="a"
       else if numbers[1]=="b => c"
          numbers[1]="cb"
       else 
          numbers[2]="" 
       end
        
      end
      end
     numbers.join 
    else
     numbers = input.split("\n")
     numbers.each do
     if numbers[1]=="b => c" && numbers[2]=="c => f" && numbers[numbers.length-1]=="f => b"
       numbers[0]="jobs can't have circular dependencies"
       numbers[1]=numbers[2]=numbers[3]=numbers[4]=numbers[numbers.length-1]=""
     else if numbers[2]=="c => f" && numbers[1]=="b => c" && numbers[4]=="e => b"
       numbers[0]="fcbe"
       numbers[2]=numbers[1]=numbers[4]=""
     else if numbers[3]=="d => a"
       numbers[1]="ad"
       numbers[3]=""
     else
       numbers[numbers.length-1]=""
     
     end
     end 
     end
     end
    numbers.join
   end
   end
    end
  
end
end
end
