(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.646262923313442261274985867203213274478912353515625p-461 {- 2910509460617786 -461 (-2.76485e-139)}
; Y = -1.8547976960241101540560748617281205952167510986328125p-889 {- 3849666585291341 -889 (-4.49397e-268)}
; -1.646262923313442261274985867203213274478912353515625p-461 * -1.8547976960241101540560748617281205952167510986328125p-889 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000110010 #b1010010101110001011111001010100000111111101000111010)))
(assert (= y (fp #b1 #b00010000110 #b1101101011010100000001011001010100011110101001001101)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
