(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.498348316686064496394692469039000570774078369140625p63 {+ 2244361293328074 63 (1.38198e+019)}
; Y = -1.946221154768006389446100001805461943149566650390625p-702 {- 4261401240023274 -702 (-9.24986e-212)}
; 1.498348316686064496394692469039000570774078369140625p63 = -1.946221154768006389446100001805461943149566650390625p-702 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000111110 #b0111111110010011110000010101101000101110111011001010)))
(assert (= y (fp #b1 #b00101000001 #b1111001000111011100011001011001010000011000011101010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
