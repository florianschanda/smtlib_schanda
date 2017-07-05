(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3722964935666157604288173388340510427951812744140625p977 {+ 1676674349697953 977 (1.75289e+294)}
; Y = -1.352658996501288957148290137411095201969146728515625p-710 {- 1588234925232058 -710 (-2.51126e-214)}
; 1.3722964935666157604288173388340510427951812744140625p977 < -1.352658996501288957148290137411095201969146728515625p-710 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111010000 #b0101111101001110110100101011000001001000101110100001)))
(assert (= y (fp #b1 #b00100111001 #b0101101001000111110111000010100010011100111110111010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
