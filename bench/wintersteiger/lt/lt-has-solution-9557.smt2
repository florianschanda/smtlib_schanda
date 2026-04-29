(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 0.8089315105614975909276154197868891060352325439453125p-1022 {+ 3643103649533013 -1023 (1.79993e-308)}
; Y = -1.8143155190039663704482109096716158092021942138671875p-371 {- 3667351067948275 -371 (-3.77211e-112)}
; 0.8089315105614975909276154197868891060352325439453125p-1022 < -1.8143155190039663704482109096716158092021942138671875p-371 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b1100111100010110001000101010111010010000110001010101)))
(assert (= y (fp #b1 #b01010001100 #b1101000001110110111110110101101010111111010011110011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
