/*
 PureMVC - Copyright(c) 2006-08 Futurecale, Inc., Some rights reserved.
 Your reuse is governed by Creative Commons Attribution 2.5 License
 */
package org.mvcexpress.extension.unpuremvc.patterns.command {
/**
 * A utility class used by MacroCommandTest.
 *
 * @see org.mvcexpress.extension.unpuremvc.patterns.command.MacroCommandTest MacroCommandTest
 * @see org.mvcexpress.extension.unpuremvc.patterns.command.MacroCommandTestCommand MacroCommandTestCommand
 * @see org.mvcexpress.extension.unpuremvc.patterns.command.MacroCommandTestSub1Command MacroCommandTestSub1Command
 * @see org.mvcexpress.extension.unpuremvc.patterns.command.MacroCommandTestSub2Command MacroCommandTestSub2Command
 */
public class MacroCommandTestVO {
	/**
	 * Constructor.
	 *
	 * @param input the number to be fed to the MacroCommandTestCommand
	 */
	public function MacroCommandTestVO(input:Number) {
		this.input = input;
	}

	public var input:Number;
	public var result1:Number;
	public var result2:Number;
}
}