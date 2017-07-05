(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5261436570046773564257591715431772172451019287109375p499 {+ 2369540377629615 499 (2.49783e+150)}
; Y = -1.5950215116664434589210941339842975139617919921875p420 {- 2679738658218424 420 (-4.31882e+126)}
; 1.5261436570046773564257591715431772172451019287109375p499 < -1.5950215116664434589210941339842975139617919921875p420 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111110010 #b1000011010110001010110011100011111010101001110101111)))
(assert (= y (fp #b1 #b10110100011 #b1001100001010011010101000110110100000110000110111000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
