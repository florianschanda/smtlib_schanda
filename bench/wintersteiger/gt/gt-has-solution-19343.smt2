(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0356826881257219508114530981401912868022918701171875p-291 {- 160700540946579 -291 (-2.60314e-088)}
; Y = 1.745406774101337266102973444503732025623321533203125p379 {+ 3357013670082226 379 (2.14914e+114)}
; -1.0356826881257219508114530981401912868022918701171875p-291 > 1.745406774101337266102973444503732025623321533203125p379 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011011100 #b0000100100100010100000000010101010001000100010010011)))
(assert (= y (fp #b0 #b10101111010 #b1011111011010010111110100111010011111011011010110010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
