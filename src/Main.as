package 
{ 
    import flash.text.engine.*; 
    import flash.display.Sprite; 
 
    public class Main extends Sprite 
    {         
        public function Main() 
        { 
            var str:String = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, " + 
            "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut " + 
            "enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut " + 
            "aliquip ex ea commodo consequat."; 
             
            var format:ElementFormat = new ElementFormat(); 
            var textElement:TextElement=new TextElement(str,format); 
            var spaceJustifier:SpaceJustifier=new SpaceJustifier("en",LineJustification.ALL_BUT_LAST); 
             
            var textBlock:TextBlock = new TextBlock(); 
            textBlock.content=textElement; 
            textBlock.textJustifier=spaceJustifier; 
            createLines(textBlock); 
        } 
 
        private function createLines(textBlock:TextBlock):void { 
            var yPos: int = 20; 
            var textLine:TextLine=textBlock.createTextLine(null,150); 
         
            while (textLine) { 
                addChild(textLine); 
                textLine.x=15; 
                yPos+=textLine.textHeight+2; 
                textLine.y=yPos; 
                textLine=textBlock.createTextLine(textLine,150); 
            } 
        } 
    } 
}