(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.871273245998392287248179854941554367542266845703125p-445 {+ 3923865866016242 -445 (2.05963e-134)}
; Y = 1.369607896482410769323223576066084206104278564453125p974 {+ 1664565984871378 974 (2.18681e+293)}
; 1.871273245998392287248179854941554367542266845703125p-445 = 1.369607896482410769323223576066084206104278564453125p974 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001000010 #b1101111100001011110000110111000101110001010111110010)))
(assert (= y (fp #b0 #b11111001101 #b0101111010011110100111111000001110111100001111010010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
