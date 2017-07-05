(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2518509475656227625250949131441302597522735595703125p-123 {+ 1134235833609445 -123 (1.17723e-037)}
; Y = 1.8704214512838321926579965293058194220066070556640625p66 {+ 3920029723657153 66 (1.38013e+020)}
; 1.2518509475656227625250949131441302597522735595703125p-123 > 1.8704214512838321926579965293058194220066070556640625p66 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110000100 #b0100000001111001010011011011111101000010110011100101)))
(assert (= y (fp #b0 #b10001000001 #b1101111011010011111100001011001100000000001111000001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
