/*
 PureMVC - Copyright(c) 2006-08 Futurecale, Inc., Some rights reserved.
 Your reuse is governed by Creative Commons Attribution 2.5 License
*/
package org.mvcexpress.extension.unpuremvc.patterns.command
{
	import org.mvcexpress.extension.unpuremvc.patterns.command.*;
	import org.mvcexpress.extension.unpuremvc.interfaces.*;

	/**
	 * A SimpleCommand subclass used by MacroCommandTestCommand.
	 *
  	 * @see org.mvcexpress.extension.unpuremvc.patterns.command.MacroCommandTest MacroCommandTest
  	 * @see org.mvcexpress.extension.unpuremvc.patterns.command.MacroCommandTestCommand MacroCommandTestCommand
  	 * @see org.mvcexpress.extension.unpuremvc.patterns.command.MacroCommandTestVO MacroCommandTestVO
	 */
	public class MacroCommandTestSub2Command extends UnpureSimpleCommand
	{
		public function MacroCommandTestSub2Command()
		{
			super();
		}

		/**
		 * Fabricate a result by multiplying the input by itself
		 *
		 * @param event the <code>IEvent</code> carrying the <code>MacroCommandTestVO</code>
		 */
		override public function execute( note:INotification) :void
		{

			var vo:MacroCommandTestVO = note.getBody() as MacroCommandTestVO;

			// Fabricate a result
			vo.result2 = vo.input * vo.input;

		}

	}
}