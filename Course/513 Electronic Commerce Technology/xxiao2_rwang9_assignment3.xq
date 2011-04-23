(: XQuery main module :)

<html xml:lang="en">
<head>
<title>Schedule for Electronic Commerce Technologies</title>
</head>
<body>

<div align="center">
<h4>Schedule for Electronic Commerce Technologies</h4>

<!-- <small> -->
<table border="1" summary="Class schedule">

{
   let $table := doc("s11-sched.html")//table
   let $trs := doc("s11-sched.html")//tr
   for $tr in $table/node()
        
   return 
   if($tr/td)
   then 
        if($tr/td[6]/a)
        then (<tr>
        <td>--</td>
        <td>
        {
        
        
        let $pieces := tokenize($tr/td[2]/text(),'/')
        return concat(concat($pieces[1],'/'),number($pieces[2])-1)
        }</td>
        <td>--</td>
        <td>--</td>
        <td>--</td>
        {$tr/td[6]}
        </tr>, 
        <tr>
        {$tr/td[1]}
        {$tr/td[2]}
        {$tr/td[3]}
        {$tr/td[4]}
        {$tr/td[5]}
        <td>--</td>
        </tr>)
        else $tr   
   else $tr   
 

}



</table>
<!-- </small> -->
</div>

</body>
</html>