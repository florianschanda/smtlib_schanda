(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2308743577215317532846938775037415325641632080078125p-79 {+ 1039765671404093 -79 (2.03631e-024)}
; Y = 1.751699179005262063668624250567518174648284912109375p-301 {+ 3385352142462806 -301 (4.29963e-091)}
; 1.2308743577215317532846938775037415325641632080078125p-79 M 1.751699179005262063668624250567518174648284912109375p-301 == 1.2308743577215317532846938775037415325641632080078125p-79
; [HW: 1.2308743577215317532846938775037415325641632080078125p-79] 

; mpf : + 1039765671404093 -79
; mpfd: + 1039765671404093 -79 (2.03631e-024) class: Pos. norm. non-zero
; hwf : + 1039765671404093 -79 (2.03631e-024) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110110000 #b0011101100011010100101001111011111100110001000111101)))
(assert (= y (fp #b0 #b01011010010 #b1100000001101111010110110111111001000001111101010110)))
(assert (= r (fp #b0 #b01110110000 #b0011101100011010100101001111011111100110001000111101)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
