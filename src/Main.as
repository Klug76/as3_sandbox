package
{
	import flash.display.Sprite;

	public class Main extends Sprite
	{
		public function Main()
		{
			trace("Hello");
			var v: Vector.<Number> = new Vector.<Number>();
			v.push(1, -1, 2., 4.5e100, 0xffFFffFF*0xffFFff, 0xffFFffFF*0xffFFff+1, NaN, -NaN, Math.sqrt(-1), Infinity, -Infinity);
			var len: int = v.length;
			for (var i: int = 0; i < len; ++i)
			{
				trace("v[", i, "]=", v[i].toString(), " == ", JSON.stringify(v[i]));
			}

		}
	}
}