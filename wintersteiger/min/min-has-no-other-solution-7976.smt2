(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.776251448061298976455191223067231476306915283203125p-261 {+ 3495925732234674 -261 (4.79375e-079)}
; Y = -1.7194191553847606446225881882128305733203887939453125p184 {- 3239975840114005 184 (-4.216e+055)}
; 1.776251448061298976455191223067231476306915283203125p-261 m -1.7194191553847606446225881882128305733203887939453125p184 == -1.7194191553847606446225881882128305733203887939453125p184
; [HW: -1.7194191553847606446225881882128305733203887939453125p184] 

; mpf : - 3239975840114005 184
; mpfd: - 3239975840114005 184 (-4.216e+055) class: Neg. norm. non-zero
; hwf : - 3239975840114005 184 (-4.216e+055) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011111010 #b1100011010111000011010100011011011100101010110110010)))
(assert (= y (fp #b1 #b10010110111 #b1011100000101011110110101001000001111110010101010101)))
(assert (= r (fp #b1 #b10010110111 #b1011100000101011110110101001000001111110010101010101)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
