(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5740085606620672908917413224116899073123931884765625p-523 {- 2585104739905161 -523 (-5.73217e-158)}
; Y = 1.27860985578069374923870782367885112762451171875p-552 {+ 1254747242675680 -552 (8.67322e-167)}
; -1.5740085606620672908917413224116899073123931884765625p-523 > 1.27860985578069374923870782367885112762451171875p-552 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111110100 #b1001001011110010001110011001101110101010111010001001)))
(assert (= y (fp #b0 #b00111010111 #b0100011101010010111110011011101011101011110111100000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
