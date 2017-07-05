(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.926182459273396485599505467689596116542816162109375p-89 {+ 4171154978460758 -89 (3.11192e-027)}
; Y = -1.214900446531486100099073155433870851993560791015625p-602 {- 967825570920954 -602 (-7.31953e-182)}
; 1.926182459273396485599505467689596116542816162109375p-89 < -1.214900446531486100099073155433870851993560791015625p-602 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110100110 #b1110110100011010010010110010110010110101010001010110)))
(assert (= y (fp #b1 #b00110100101 #b0011011100000011101101110011010110111111100111111010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
