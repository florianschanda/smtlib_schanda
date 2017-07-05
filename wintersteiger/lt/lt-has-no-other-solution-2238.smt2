(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.965348212516482728773326016380451619625091552734375p359 {+ 4347541850172006 359 (2.30785e+108)}
; Y = -1.973933998980776483023191758547909557819366455078125p708 {- 4386208794893282 708 (-2.65809e+213)}
; 1.965348212516482728773326016380451619625091552734375p359 < -1.973933998980776483023191758547909557819366455078125p708 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101100110 #b1111011100100001000011110111101000000010101001100110)))
(assert (= y (fp #b1 #b11011000011 #b1111100101010011101111010001001000010101101111100010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
