(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.98593184875480677220593861420638859272003173828125p-166 {+ 4440242306664852 -166 (2.12317e-050)}
; 1.98593184875480677220593861420638859272003173828125p-166 S == 1.4092309423067630458348276079050265252590179443359375p-83
; [HW: 1.4092309423067630458348276079050265252590179443359375p-83] 

; mpf : + 1843012319281215 -83
; mpfd: + 1843012319281215 -83 (1.45711e-025) class: Pos. norm. non-zero
; hwf : + 1843012319281215 -83 (1.45711e-025) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101011001 #b1111110001100110000001111001011001111100100110010100)))
(assert (= r (fp #b0 #b01110101100 #b0110100011000011010110111110100110111000000000111111)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
