(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6363924453175631157364477985538542270660400390625p-884 {- 2866056779593576 -884 (-1.26874e-266)}
; Y = 1.545047212255828750215869149542413651943206787109375p-520 {+ 2454674422014678 -520 (4.50136e-157)}
; -1.6363924453175631157364477985538542270660400390625p-884 = 1.545047212255828750215869149542413651943206787109375p-520 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010001011 #b1010001011101010100111011000010000001111011101101000)))
(assert (= y (fp #b0 #b00111110111 #b1000101110001000001101101100111101101010001011010110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
