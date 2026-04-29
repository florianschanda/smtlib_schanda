(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8881050900097779976505307786283083260059356689453125p870 {+ 3999669752433877 870 (1.48635e+262)}
; Y = -1.9367303703051579333305198815651237964630126953125p634 {- 4218658546652936 634 (-1.38066e+191)}
; 1.8881050900097779976505307786283083260059356689453125p870 = -1.9367303703051579333305198815651237964630126953125p634 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101100101 #b1110001101011010110110101110110100000000110011010101)))
(assert (= y (fp #b1 #b11001111001 #b1110111111001101100011111100000110100001011100001000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
