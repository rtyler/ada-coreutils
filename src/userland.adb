------------------------------------------------------------------------------
--
--  Copyright (C) 2016 R. Tyler Croy <tyler@linux.com>
--
--  This program is free software; you can redistribute it and/or
--  modify it under the terms of the GNU General Public License
--  as published by the Free Software Foundation; either version 2
--  of the License, or (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program; if not, write to the Free Software
--  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
------------------------------------------------------------------------------

with Ada.Characters.Handling,
     Ada.Strings.Unbounded;

package body Userland is

   function To_Lower (Input : in Ada.Strings.Unbounded.Unbounded_String) return String is
   -- Lower-case an entire Unbounded_String and return a Standard.String instead

      use Ada.Characters.Handling,
          Ada.Strings.Unbounded;
   begin
      return To_Lower (To_String (Input));
   end To_Lower;

   function Version return String is
   begin
      return "(Ada coreutils) 0.1";
   end Version;
end Userland;
