/*
 PureMVC - Copyright(c) 2006-08 Futurescale, Inc., Some rights reserved.
 Your reuse is governed by the Creative Commons Attribution 3.0 United States License
 */
package org.mvcexpress.extension.unpuremvc.patterns.command {

import org.mvcexpress.extension.unpuremvc.interfaces.*;
import org.mvcexpress.extension.unpuremvc.patterns.observer.UnpureNotifier;

/**
 * A base <code>ICommand</code> implementation.
 *
 * <P>
 * Your subclass should override the <code>execute</code>
 * method where your business logic will handle the <code>INotification</code>. </P>
 *
 * @see org.mvcexpress.extension.unpuremvc.core.controller.Controller Controller
 * @see org.mvcexpress.extension.unpuremvc.patterns.observer.UnpureNotification Notification
 * @see org.mvcexpress.extension.unpuremvc.patterns.command.UnpureMacroCommand MacroCommand
 */
public class UnpureSimpleCommand extends UnpureNotifier implements ICommand, INotifier {

	/**
	 * Fulfill the use-case initiated by the given <code>INotification</code>.
	 *
	 * <P>
	 * In the Command Pattern, an application use-case typically
	 * begins with some user action, which results in an <code>INotification</code> being broadcast, which
	 * is handled by business logic in the <code>execute</code> method of an
	 * <code>ICommand</code>.</P>
	 *
	 * @param notification the <code>INotification</code> to handle.
	 */
	public function execute(notification:INotification):void {

	}

}
}