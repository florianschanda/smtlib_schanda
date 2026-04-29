(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1617478081549419410833934307447634637355804443359375p660 {- 728447368534591 660 (-5.55788e+198)}
; Y = -1.076510155631326792757818111567758023738861083984375p-146 {- 344571108391302 -146 (-1.20681e-044)}
; -1.1617478081549419410833934307447634637355804443359375p660 = -1.076510155631326792757818111567758023738861083984375p-146 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010010011 #b0010100101101000010011011110101000111001101000111111)))
(assert (= y (fp #b1 #b01101101101 #b0001001110010110001010110110100000111111100110000110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
