(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.510371114223741262350131364655680954456329345703125p-118 {- 2298507159838706 -118 (-4.54511e-036)}
; Y = -1.9895339870615045274604426595033146440982818603515625p-576 {- 4456464895400633 -576 (-8.04403e-174)}
; -1.510371114223741262350131364655680954456329345703125p-118 < -1.9895339870615045274604426595033146440982818603515625p-576 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110001001 #b1000001010100111101011100110110001101001111111110010)))
(assert (= y (fp #b1 #b00110111111 #b1111110101010010000110010111000010110101101010111001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
