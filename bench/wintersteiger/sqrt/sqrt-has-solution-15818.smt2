(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4719007515331290480986581314937211573123931884765625p215 {+ 2125252048760457 215 (7.75046e+064)}
; 1.4719007515331290480986581314937211573123931884765625p215 S == 1.7157510026417757131866892450489103794097900390625p107
; [HW: 1.7157510026417757131866892450489103794097900390625p107] 

; mpf : + 3223455948787560 107
; mpfd: + 3223455948787560 107 (2.78397e+032) class: Pos. norm. non-zero
; hwf : + 3223455948787560 107 (2.78397e+032) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011010110 #b0111100011001110011111001101011011001010111010001001)))
(assert (= r (fp #b0 #b10001101010 #b1011011100111011011101010010110001101100111101101000)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
