(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5872266910481316326553269391297362744808197021484375p75 {- 2644633906986375 75 (-5.99637e+022)}
; Y = 1.0109683278467309630599402225925587117671966552734375p-778 {+ 49396957203415 -778 (6.35918e-235)}
; -1.5872266910481316326553269391297362744808197021484375p75 M 1.0109683278467309630599402225925587117671966552734375p-778 == 1.0109683278467309630599402225925587117671966552734375p-778
; [HW: 1.0109683278467309630599402225925587117671966552734375p-778] 

; mpf : + 49396957203415 -778
; mpfd: + 49396957203415 -778 (6.35918e-235) class: Pos. norm. non-zero
; hwf : + 49396957203415 -778 (6.35918e-235) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001001010 #b1001011001010100011111010000100101100011110110000111)))
(assert (= y (fp #b0 #b00011110101 #b0000001011001110110100100000000101100100101111010111)))
(assert (= r (fp #b0 #b00011110101 #b0000001011001110110100100000000101100100101111010111)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
