(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2485266468693101415965429623611271381378173828125p-62 {+ 1119264514232264 -62 (2.70731e-019)}
; Y = -1.70107712451285042476456510485149919986724853515625p696 {- 3157370676714052 696 (-5.59244e+209)}
; 1.2485266468693101415965429623611271381378173828125p-62 = -1.70107712451285042476456510485149919986724853515625p696 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111000001 #b0011111110011111011100010011110001111100111111001000)))
(assert (= y (fp #b1 #b11010110111 #b1011001101111001110010100101100111000001101001000100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
