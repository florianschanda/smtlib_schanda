(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4110996705957823404986584137077443301677703857421875p-767 {+ 1851428323307299 -767 (1.81782e-231)}
; Y = -1.35009364888330463116972168791107833385467529296875p-257 {- 1576681626655628 -257 (-5.82982e-078)}
; 1.4110996705957823404986584137077443301677703857421875p-767 > -1.35009364888330463116972168791107833385467529296875p-257 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100000000 #b0110100100111101110100111111100010011010111100100011)))
(assert (= y (fp #b1 #b01011111110 #b0101100110011111101111001100010001111101101110001100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
