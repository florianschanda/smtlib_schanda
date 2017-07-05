(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9836340256962221584302596966153942048549652099609375p-629 {+ 4429893831594447 -629 (8.90419e-190)}
; Y = -1.3509965649705828472093571690493263304233551025390625p88 {- 1580747999209841 88 (-4.18113e+026)}
; 1.9836340256962221584302596966153942048549652099609375p-629 < -1.3509965649705828472093571690493263304233551025390625p88 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110001010 #b1111101111001111011100001000001110011001000111001111)))
(assert (= y (fp #b1 #b10001010111 #b0101100111011010111010010010111110001110100101110001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
