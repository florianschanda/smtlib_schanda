(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1036985447060085885340185996028594672679901123046875p-399 {- 467016727296843 -399 (-8.54835e-121)}
; Y = -1.8784569947512486098872841466800309717655181884765625p963 {- 3956218594222729 963 (-1.46449e+290)}
; -1.1036985447060085885340185996028594672679901123046875p-399 = -1.8784569947512486098872841466800309717655181884765625p963 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001110000 #b0001101010001011111111001110001000100111101101001011)))
(assert (= y (fp #b1 #b11111000010 #b1110000011100010100011101011111101100110001010001001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
