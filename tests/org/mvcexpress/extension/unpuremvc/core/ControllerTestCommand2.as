/*
 PureMVC - Copyright(c) 2006-08 Futurecale, Inc., Some rights reserved.
 Your reuse is governed by Creative Commons Attribution 2.5 License
 */
package org.mvcexpress.extension.unpuremvc.core {
import org.mvcexpress.extension.unpuremvc.patterns.command.*;
import org.mvcexpress.extension.unpuremvc.patterns.observer.UnpureNotification;

/**
 * A SimpleCommand subclass used by ControllerTest.
 *
 * @see org.mvcexpress.extension.unpuremvc.core.controller.ControllerTest ControllerTest
 * @see org.mvcexpress.extension.unpuremvc.core.controller.ControllerTestVO ControllerTestVO
 */
public class ControllerTestCommand2 extends UnpureSimpleCommand {

	/**
	 * Constructor.
	 */
	public function ControllerTestCommand2() {
		super();
	}

	/**
	 * Fabricate a result by multiplying the input by 2 and adding to the existing result
	 * <P>
	 * This tests accumulation effect that would show if the command were executed more than once.
	 * @param note the note carrying the ControllerTestVO
	 */
	override public function execute(note:UnpureNotification):void {

		var vo:ControllerTestVO = note.getBody() as ControllerTestVO;

		// Fabricate a result
		vo.result = vo.result + (2 * vo.input);

	}

}
}