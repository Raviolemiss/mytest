var a = [1, 1, 2, 2, 1];
var a1 = [2, 4, 3, 5, 1];
var a2 = [2,3,3];
var a3 = [3,3,3];
var a4 = [8, 4, 6, 2, 6, 4, 7, 9, 5, 8];
var a5 = [10, 6, 8, 4, 9, 1, 7, 2, 5, 3];
var a6 = [1, 1, 2, 2, 1];
var k=new Array(a.length-1).fill(0);
var l=1;
function arrayduplicate(p1){

var k=new Array(p1.length-1).fill(0);
var l=1;

for(i=0;i<=p1.length-2;i++)
{
for(j=i+1;j<=p1.length-1;j++)
{
if(p1[i]==p1[j])
{
k[j]=p1[j];
}
}
}
for(r=0;r<=k.length-1;r++)
 {
 if(k[r]!=0 && l==1 ) 
 {
 console.log("firstDuplicate(a)"+" "+"=" + " " +k[r]);
 l=l+1;
 }

 }
 for(r=0;r<=k.length-1;r++)
 {
 if(k[r]==0 && l==1)
 {
 console.log("firstDuplicate(a)"+" "+"=" + " " +-1);
l=l+1;
 }

 }
}
arrayduplicate(a);
arrayduplicate(a1);
arrayduplicate(a2);
arrayduplicate(a3);
arrayduplicate(a4);
arrayduplicate(a5);
arrayduplicate(a6);
