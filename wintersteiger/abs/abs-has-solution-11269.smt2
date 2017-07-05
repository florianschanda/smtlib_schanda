(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3001475007829663699254751918488182127475738525390625p-969 {- 1351744172682353 -969 (-2.60571e-292)}
; -1.3001475007829663699254751918488182127475738525390625p-969 | == 1.3001475007829663699254751918488182127475738525390625p-969
; [HW: 1.3001475007829663699254751918488182127475738525390625p-969] 

; mpf : + 1351744172682353 -969
; mpfd: + 1351744172682353 -969 (2.60571e-292) class: Pos. norm. non-zero
; hwf : + 1351744172682353 -969 (2.60571e-292) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000110110 #b0100110011010110011101110111001111010110110001110001)))
(assert (= r (fp #b0 #b00000110110 #b0100110011010110011101110111001111010110110001110001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
