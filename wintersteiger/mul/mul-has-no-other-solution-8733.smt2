(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9948196722508668710105439458857290446758270263671875p-658 {- 4480269505249843 -658 (-1.66789e-198)}
; Y = 1.2698913592300680175384286485495977103710174560546875p-682 {+ 1215482624859051 -682 (6.32863e-206)}
; -1.9948196722508668710105439458857290446758270263671875p-658 * 1.2698913592300680175384286485495977103710174560546875p-682 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101101101 #b1111111010101100100000001000010110111100001000110011)))
(assert (= y (fp #b0 #b00101010101 #b0100010100010111100110011010000101011101101110101011)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
