(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2456550891026070271294656777172349393367767333984375p510 {- 1106332167744167 510 (-4.17538e+153)}
; Y = 1.0856108282429526301626765416585840284824371337890625p-814 {+ 385556894173841 -814 (9.93706e-246)}
; -1.2456550891026070271294656777172349393367767333984375p510 - 1.0856108282429526301626765416585840284824371337890625p-814 == -1.2456550891026070271294656777172349393367767333984375p510
; [HW: -1.2456550891026070271294656777172349393367767333984375p510] 

; mpf : - 1106332167744167 510
; mpfd: - 1106332167744167 510 (-4.17538e+153) class: Neg. norm. non-zero
; hwf : - 1106332167744167 510 (-4.17538e+153) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111111101 #b0011111011100011010000000111110111001010101010100111)))
(assert (= y (fp #b0 #b00011010001 #b0001010111101010100101110101101101111100101010010001)))
(assert (= r (fp #b1 #b10111111101 #b0011111011100011010000000111110111001010101010100111)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
