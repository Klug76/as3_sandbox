package
{ 
     
    import flash.text.engine.*; 
    import flash.display.Sprite; 
     
    public class Main extends Sprite 
    { 
        public function Main() 
        { 
            var format:ElementFormat = new ElementFormat(); 
            format.fontDescription = new FontDescription("Arial"); 
            format.fontSize = 16; 
     
            var tabStops:Vector.<TabStop> = new Vector.<TabStop>();     
            tabStops.push( 
                new TabStop(TabAlignment.START, 20), 
                new TabStop(TabAlignment.CENTER, 140), 
                new TabStop(TabAlignment.DECIMAL, 260, "."), 
                new TabStop(TabAlignment.END, 380)); 
            var textBlock:TextBlock = new TextBlock(); 
            textBlock.content = new TextElement( 
                "\tt1\tt2\tt3\tt4\n" +         
                "\tThis line aligns on 1st tab\n" +         
                "\t\t\t\tThis is the end\n" + 
                "\tThe following fragment centers on the 2nd tab:\t\t\n" + 
                "\t\tit's on me\t\t\n" + 
                "\tThe following amounts align on the decimal point:\n" + 
                "\t\t\t45.00\t\n" + 
                "\t\t\t75,320.00\t\n" + 
                "\t\t\t6,950.00\t\n" + 
                "\t\t\t7.01\t\n", format); 
     
            textBlock.tabStops = tabStops; 
            var yPosition:Number = 60; 
            var previousTextLine:TextLine = null; 
            var textLine:TextLine; 
            var i:int; 
            for (i = 0; i < 10; i++) { 
                textLine = textBlock.createTextLine(previousTextLine, 1000, 0); 
                textLine.x = 20; 
                textLine.y = yPosition; 
                addChild(textLine);      
                yPosition += 25; 
                previousTextLine = textLine; 
            } 
        } 
    } 
}