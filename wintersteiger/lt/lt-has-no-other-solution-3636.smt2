(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8251334970049686301507563257473520934581756591796875p-86 {+ 3716070909642491 -86 (2.35893e-026)}
; Y = -1.039625840322746075372606355813331902027130126953125p236 {- 178458919711762 236 (-1.14804e+071)}
; 1.8251334970049686301507563257473520934581756591796875p-86 < -1.039625840322746075372606355813331902027130126953125p236 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110101001 #b1101001100111011111100101110100001111000011011111011)))
(assert (= y (fp #b1 #b10011101011 #b0000101000100100111010110100100001000011010000010010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
