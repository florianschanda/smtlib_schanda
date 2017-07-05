(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7850607000603850860187549187685362994670867919921875p461 {+ 3535599076255171 461 (1.06287e+139)}
; Y = 1.746439026130968130701148766092956066131591796875p-653 {+ 3361662519938224 -653 (4.67268e-197)}
; 1.7850607000603850860187549187685362994670867919921875p461 = 1.746439026130968130701148766092956066131591796875p-653 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111001100 #b1100100011111001101111001111000000100010010111000011)))
(assert (= y (fp #b0 #b00101110010 #b1011111100010110101000001100010110110000110010110000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
