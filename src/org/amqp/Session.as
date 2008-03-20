/**
 * ---------------------------------------------------------------------------
 *   Copyright (C) 2008 0x6e6562
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 * ---------------------------------------------------------------------------
 **/
package org.amqp
{
	public interface Session
	{
		function closeGracefully():void;
		
		function forceClose():void;
		
		function sendCommand(c:Command):void;
		
		function handleFrame(frame:Frame):void;
		
		function addAfterOpenEventListener(callback:Function):void;
		
		function removeAfterOpenEventListener(callback:Function):void;
		
		function addAfterCloseEventListener(callback:Function):void;
		
		function removeAfterCloseEventListener(callback:Function):void;
		
	}
}