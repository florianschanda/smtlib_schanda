(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.236747882164388467884919009520672261714935302734375p1022 {- 1066217673896294 1022 (-5.55823e+307)}
; Y = 1.367435003872628396237587367068044841289520263671875p691 {+ 1654780146523646 691 (1.40486e+208)}
; -1.236747882164388467884919009520672261714935302734375p1022 + 1.367435003872628396237587367068044841289520263671875p691 == -1.236747882164388467884919009520672261714935302734375p1022
; [HW: -1.236747882164388467884919009520672261714935302734375p1022] 

; mpf : - 1066217673896294 1022
; mpfd: - 1066217673896294 1022 (-5.55823e+307) class: Neg. norm. non-zero
; hwf : - 1066217673896294 1022 (-5.55823e+307) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111111101 #b0011110010011011100000100101101101001011000101100110)))
(assert (= y (fp #b0 #b11010110010 #b0101111000010000001110000110110100001001110111111110)))
(assert (= r (fp #b1 #b11111111101 #b0011110010011011100000100101101101001011000101100110)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
