/*
 PureMVC - Copyright(c) 2006-08 Futurecale, Inc., Some rights reserved.
 Your reuse is governed by Creative Commons Attribution 2.5 License
 */
package org.mvcexpress.extension.unpuremvc.patterns.command {
/**
 * A MacroCommand subclass used by MacroCommandTest.
 *
 * @see org.mvcexpress.extension.unpuremvc.patterns.command.MacroCommandTest MacroCommandTest
 * @see org.mvcexpress.extension.unpuremvc.patterns.command.MacroCommandTestSub1Command MacroCommandTestSub1Command
 * @see org.mvcexpress.extension.unpuremvc.patterns.command.MacroCommandTestSub2Command MacroCommandTestSub2Command
 * @see org.mvcexpress.extension.unpuremvc.patterns.command.MacroCommandTestVO MacroCommandTestVO
 */
public class MacroCommandTestCommand extends UnpureMacroCommand {
	/**
	 * Constructor.
	 */
	public function MacroCommandTestCommand() {
		super();
	}

	/**
	 * Initialize the MacroCommandTestCommand by adding
	 * its 2 SubCommands.
	 */
	override protected function initializeMacroCommand():void {
		addSubCommand(MacroCommandTestSub1Command);
		addSubCommand(MacroCommandTestSub2Command);
	}

}
}