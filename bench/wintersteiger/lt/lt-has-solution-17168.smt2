(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5896244046386687198690879085916094481945037841796875p-701 {+ 2655432249019259 -701 (1.51101e-211)}
; Y = -1.4845633513665117408919513763976283371448516845703125p760 {- 2182279328651621 760 (-9.00317e+228)}
; 1.5896244046386687198690879085916094481945037841796875p-701 < -1.4845633513665117408919513763976283371448516845703125p760 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101000010 #b1001011011110001100111111111111011011000101101111011)))
(assert (= y (fp #b1 #b11011110111 #b0111110000001100010110000000001011110101100101100101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
