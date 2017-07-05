(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.28688241266989589206559685408137738704681396484375p-549 {+ 1292003526799292 -549 (6.98347e-166)}
; Y = 1.6113402769625622124038955007563345134258270263671875p-625 {+ 2753231843525171 -625 (1.15728e-188)}
; 1.28688241266989589206559685408137738704681396484375p-549 > 1.6113402769625622124038955007563345134258270263671875p-625 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111011010 #b0100100101110001001000000011010000110110111110111100)))
(assert (= y (fp #b0 #b00110001110 #b1001110010000000110010111110000001001000001000110011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
