(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.406967550913616360475089095416478812694549560546875p73 {+ 1832818910646446 73 (1.32884e+022)}
; Y = 1.03516877757662317804943086230196058750152587890625p326 {+ 158386093589156 326 (1.41511e+098)}
; 1.406967550913616360475089095416478812694549560546875p73 < 1.03516877757662317804943086230196058750152587890625p326 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001001000 #b0110100000101111000001101000000110110101000010101110)))
(assert (= y (fp #b0 #b10101000101 #b0000100100000000110100100010110110001000001010100100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
