(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.895963657625836074060998726054094731807708740234375p222 {- 4035061594621222 222 (-1.27788e+067)}
; Y = 1.057530504626759348951736683375202119350433349609375p787 {+ 259094359199510 787 (8.60795e+236)}
; -1.895963657625836074060998726054094731807708740234375p222 = 1.057530504626759348951736683375202119350433349609375p787 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011011101 #b1110010101011101110111111100111111101000010100100110)))
(assert (= y (fp #b0 #b11100010010 #b0000111010111010010100011011001111100100111100010110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
