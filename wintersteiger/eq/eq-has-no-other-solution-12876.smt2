(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.601924945097447761099829222075641155242919921875p993 {- 2710828958445872 993 (-1.341e+299)}
; Y = 1.7530161283481664469263705541379749774932861328125p-568 {+ 3391283155032776 -568 (1.81446e-171)}
; -1.601924945097447761099829222075641155242919921875p993 = 1.7530161283481664469263705541379749774932861328125p-568 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111100000 #b1001101000010111110000001101000111010111000100110000)))
(assert (= y (fp #b0 #b00111000111 #b1100000011000101101010100011110010011101101011001000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
