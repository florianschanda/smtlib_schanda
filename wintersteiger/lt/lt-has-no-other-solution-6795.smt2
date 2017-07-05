(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4697098281945268904991053204867057502269744873046875p-199 {- 2115385007229131 -199 (-1.82921e-060)}
; Y = 1.5649847904929641284610397633514367043972015380859375p-130 {+ 2544465291934111 -130 (1.14977e-039)}
; -1.4697098281945268904991053204867057502269744873046875p-199 < 1.5649847904929641284610397633514367043972015380859375p-130 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100111000 #b0111100000111110111001110011111010110100100011001011)))
(assert (= y (fp #b0 #b01101111101 #b1001000010100010110101111101110111100111100110011111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
