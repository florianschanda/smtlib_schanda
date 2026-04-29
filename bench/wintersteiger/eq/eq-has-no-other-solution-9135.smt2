(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3119224226373609187845659107551909983158111572265625p297 {+ 1404773706358121 297 (3.34054e+089)}
; Y = -1.232756366364779143651730919373221695423126220703125p807 {- 1048241484828530 807 (-1.05216e+243)}
; 1.3119224226373609187845659107551909983158111572265625p297 = -1.232756366364779143651730919373221695423126220703125p807 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100101000 #b0100111111011010001001011101110000011101110101101001)))
(assert (= y (fp #b1 #b11100100110 #b0011101110010101111010111101010101111000111101110010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
