(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3416179766272537943194720355677418410778045654296875p-131 {+ 1538510592241563 -131 (4.92833e-040)}
; Y = 1.640563132697557602313054303522221744060516357421875p-313 {+ 2884839885723998 -313 (9.83115e-095)}
; 1.3416179766272537943194720355677418410778045654296875p-131 / 1.640563132697557602313054303522221744060516357421875p-313 == 1.6355578763022038391028445403208024799823760986328125p181
; [HW: 1.6355578763022038391028445403208024799823760986328125p181] 

; mpf : + 2862298214886989 181
; mpfd: + 2862298214886989 181 (5.01297e+054) class: Pos. norm. non-zero
; hwf : + 2862298214886989 181 (5.01297e+054) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101111100 #b0101011101110100010001101001010101010110111110011011)))
(assert (= y (fp #b0 #b01011000110 #b1010001111111011111100100000100111110101100101011110)))
(assert (= r (fp #b0 #b10010110100 #b1010001010110011111010111100010101101110111001001101)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
