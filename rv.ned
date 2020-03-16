//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
//
simple rv
{
	gates:
	    input in;
	    output out;
}


network rv_communication
{
	submodules:
	    tinyvp_1: rv;
	    tinyvp_2: rv;
	connections:
        tinyvp_1.out --> {  delay = 300ms; } --> tinyvp_2.in;
        tinyvp_1.in <-- {  delay = 300ms; } <-- tinyvp_2.out;
}