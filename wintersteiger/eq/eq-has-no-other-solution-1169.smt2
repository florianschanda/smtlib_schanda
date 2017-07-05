(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.452532131251389468928891801624558866024017333984375p176 {- 2038023537676934 176 (-1.39125e+053)}
; Y = -1.2884517288030838955137369339354336261749267578125p-77 {- 1299071098351944 -77 (-8.52626e-024)}
; -1.452532131251389468928891801624558866024017333984375p176 = -1.2884517288030838955137369339354336261749267578125p-77 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010101111 #b0111001111011001001001010101000000011101001010000110)))
(assert (= y (fp #b1 #b01110110010 #b0100100111010111111110001111010110101111000101001000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
