(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.545362252314489648341577776591293513774871826171875p82 {+ 2456093236305470 82 (7.47291e+024)}
; Y = 1.0295408457839283489221315903705544769763946533203125p595 {+ 133040142064709 595 (1.33503e+179)}
; 1.545362252314489648341577776591293513774871826171875p82 > 1.0295408457839283489221315903705544769763946533203125p595 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001010001 #b1000101110011100110111000100111000101001111000111110)))
(assert (= y (fp #b0 #b11001010010 #b0000011110001111111111010010011010001001110001000101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
