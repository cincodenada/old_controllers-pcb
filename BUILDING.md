# Building Controller Pro v0.9

_This document last updated 2019-10-23_

## Supplies

For starters, here's what you should have:

![Kit contents](img/sz/600/parts_labelled_boxed.jpg)

- 1 Main board 
- 2 Child boards
- 4 8-pin headers
- 4 8-pin receptacles (right-angle)
- 2 Teensy receptacles (12-pin)
- 4 pull-down resistors (plus extras)
- 8 3-pin 4mm headers
- 4 4-pin 4mm headers

I use a 3D printed jig (`solder_helper()` in `controllers.scad`) to help hold things in place while soldering them. If you have access to a 3D printer, I recommend it, it should be a pretty quick print, although it may require a well-calibrated printer. It's designed to be able to pause the print and insert 3mm nuts to screw bolts into to hold it off the table:

![Jig standing on screws](img/sz/400/jig.jpg)

For those that want to just jump in, here's where they go, and a quick summary of special notes:

![Main Board Front (labelled)](img/sz/400/mainboard_front_labelled.jpg)
![Main Board Back (labelled)](img/sz/400/mainboard_back_labelled.jpg)

![Child Board Front (labelled)](img/sz/400/sideboard_front_labelled.jpg)
![Child Board Back (labelled)](img/sz/400/sideboard_back_labelled.jpg)

Notes:

- The base of the 4mm headers is too wide to get the vertical pin spacing correct - you'll need to remove part of the base to get them close enough to each other.
- The 8-pin receptacles on one side sit on top of the protruding pins from the 12-pin teensy headers - I trim these pins back before I solder them, so the 8-pin headers can sit close to the board.
- SNES controllers will run into the three top pins on the child boards - if you don't want to have to squeeze (and scratch up) your SNES controller plugs, leave the top three pins off of one side board, and have an SNES side and an NES side.

## Soldering

### Main board (front)

First, put the Teensy receptacles (12-pin) in place, and trim the pins back so that the 8-pin headers will sit flat:

![Trim back the pins on the Teensy headers](img/sz/600/clip_leads.jpg)

The pins should look like this, before/after:

![Pins, unclipped](img/sz/400/clipped_before.jpg)
![Pins, clipped](img/sz/400/clipped_after.jpg)

Then go ahead and solder them in, just make sure to heat the short pins so there's still a good connection.

![Main board with teensy headers](img/sz/600/teensy_headers.jpg)

### Main board (back)

Next, flip the board over and add the four 8-pin receptacles. If using the jig, insert them into the slots as follows, put the board on, solder, and then pop the receptacles out. You may need to use a hand or clip to hold the board in place against the jig.

![8-pin receptacles in jig](img/sz/400/8pin_headers_frame.jpg)
![Board on jig with 8-pin receptacles in place](img/sz/400/8pin_headers_with_board.jpg)
![Soldering 8-pin headers in](img/sz/400/8pin_headers_fromfront.jpg)
![Removing 8-pin headers](img/sz/400/8pin_headers_remove.jpg)

If not using a jig, it may be easier to solder them from the back, since these are right-angle headers:

![8-pin receptacles being soldered from the front](img/sz/600/8pin_headers_fromback.jpg)

Once the 8-pin headers are soldered in, the main board is done!

![8-pin headers in place](img/sz/600/8pin_headers_finished.jpg)

### Child board

If you're going to put it in a case, you'll need to sand down or otherwise remove the little protrusions around the edge of the side boards. I found a small triangle file did the trick quite well, but any file or even wire cutters will work fine. You can do this to the main board as well, but the clearances in the case for those don't require it.
 
![Sand edges of the board](img/sz/600/child_sand_edges.jpg)

It's easiest to solder the resistors before any headers are in place, so start with that. They go in the R1/R2 slots - there are a few solder bridges, they can be ignored, as they're for configurations we won't be using.

![Side board with tweezers and resistors](img/sz/400/pulldown_prep.jpg)
![Soldering pulldowns on](img/sz/400/pulldown_solder.jpg)

The order of the headers only really matters if you're using the jig, which was designed to solder the 8-pin headers first. So, do so, on the side with the outline for the headers and QR code. If using the jig, insert the headers in long-side down and place the board on top:

![8-pin headers in jig](img/sz/400/8pin_header.jpg)
![8-pin headers in place](img/sz/400/8pin_headers_in_place.jpg)

Next, add the 4mm headers. Your kit may already have the bases trimmed, if not, you'll need to remove part of the bases on four each of the 3- and 4-pin headers. I use small nippers from Ace Hardware, a rotary tool or any number of cutting tools would also do the trick. You just need to remove enough base that the remaining base extends no more than 2mm out from the pins so they will fit together.

If using nippers, I advise scoring both sides by squeezing the nippers partway down before attempting to clip all the way through, otherwise the header may break in half:

![Score one side...](img/sz/400/header_clip_1.jpg)
![...then the other...](img/sz/400/header_clip_2.jpg)
![...then clip away](img/sz/400/header_clip_3.jpg)

You should end up with all four 4-pin headers clipped, four 3-pin clipped, and four 3-pin unclipped:

![End result](img/sz/600/headers_clipped.jpg)

Once clipped, you can put them in placed - again, if using the jig, place them long-end down. Otherwise, I advise using an alligator clip/helping hand/etc to hold the headers in place:

![Headers in place without jig](img/sz/400/headers_in_place.jpg)
![Headers in place without jig](img/sz/400/headers_in_frame.jpg)

Solder in place, and you're good to go!

![Headers soldered in](img/sz/600/headers_done.jpg)

Rinse and repeat for the second board, except one caveat: SNES controllers will run into the top three pins if populated. You can kind of squeeze the SNES connector and it'll fit, but over time this leads to scratches on the connector, so you can also leave the top three pins off one side, and have one side be for NES and the other be for SNES. I'm still looking for a better way to avoid this problem (folding headers? collapsing headers?), but since most NES/SNES games only use two controllers anyway, having one side for each works well enough. This is what an SNES side board should look like:

![Headers in the SNES configuration](img/sz/600/headers_snes.jpg)

N64 controllers work fine in either configuration, of course. And if you really want to, you can also order an extra set of side boards, since they are interchangeable, or just squeeze the SNES controllers in.

## Assembly

At this point you should have two side boards, a main board, and a Teensy:

![2x side board, main board, teensy](img/sz/400/boards_separate.jpg)

First, put the Teensy on the main board. The last two pins will overhang the end, they are unused in this design:

![Teensy plugged in, with pins overhanging](img/sz/400/teensy_overhang.jpg)

Then, plug the sideboards into the main board using the 8-pin headers:

![Assembled, top side](img/sz/400/boards_together.jpg)
![Assembled, bottom side](img/sz/400/boards_together_upside_down.jpg)
