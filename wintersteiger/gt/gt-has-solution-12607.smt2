(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7161634191914962865865845742519013583660125732421875p597 {- 3225313307807203 597 (-8.90156e+179)}
; Y = -1.95060171363869994110018524224869906902313232421875p-810 {- 4281129523321004 -810 (-2.85675e-244)}
; -1.7161634191914962865865845742519013583660125732421875p597 > -1.95060171363869994110018524224869906902313232421875p-810 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001010100 #b1011011101010110011111000110000000000100110111100011)))
(assert (= y (fp #b1 #b00011010101 #b1111001101011010101000100100011110011001100010101100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
