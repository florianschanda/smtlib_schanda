(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4029933994025629573343394440598785877227783203125p-40 {+ 1814920923382152 -40 (1.27602e-012)}
; Y = -1.7466846777897533371515237377025187015533447265625p-396 {- 3362768836657192 -396 (-1.08227e-119)}
; 1.4029933994025629573343394440598785877227783203125p-40 < -1.7466846777897533371515237377025187015533447265625p-396 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111010111 #b0110011100101010100100110100111011110000000110001000)))
(assert (= y (fp #b1 #b01001110011 #b1011111100100110101110100001111110001000000000101000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
