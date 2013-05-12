/*
 PureMVC - Copyright(c) 2006-08 Futurecale, Inc., Some rights reserved.
 Your reuse is governed by Creative Commons Attribution 2.5 License
*/
package org.mvcexpress.extension.unpuremvc.patterns.command
{
	import org.mvcexpress.extension.unpuremvc.interfaces.*;
	import org.mvcexpress.extension.unpuremvc.patterns.command.*;

	/**
	 * A SimpleCommand subclass used by SimpleCommandTest.
	 *
  	 * @see org.mvcexpress.extension.unpuremvc.patterns.command.SimpleCommandTest SimpleCommandTest
  	 * @see org.mvcexpress.extension.unpuremvc.patterns.command.SimpleCommandTestVO SimpleCommandTestVO
	 */
	public class SimpleCommandTestCommand extends UnpureSimpleCommand
	{

		/**
		 * Constructor.
		 */
		public function SimpleCommandTestCommand()
		{
			super();
		}

		/**
		 * Fabricate a result by multiplying the input by 2
		 *
		 * @param event the <code>INotification</code> carrying the <code>SimpleCommandTestVO</code>
		 */
		override public function execute( note:INotification ) :void
		{

			var vo:SimpleCommandTestVO = note.getBody() as SimpleCommandTestVO;

			// Fabricate a result
			vo.result = 2 * vo.input;

		}

	}
}