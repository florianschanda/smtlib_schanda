(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4405069215346462119242687549558468163013458251953125p-687 {+ 1983866807677557 -687 (2.24341e-207)}
; Y = 1.01376117210682625824347269372083246707916259765625p-563 {+ 61974809572484 -563 (3.35775e-170)}
; 1.4405069215346462119242687549558468163013458251953125p-687 > 1.01376117210682625824347269372083246707916259765625p-563 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101010000 #b0111000011000101000011111100010110100111001001110101)))
(assert (= y (fp #b0 #b00111001100 #b0000001110000101110110100010100000100111010010000100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
