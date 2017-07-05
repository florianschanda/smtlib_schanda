(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0837238479246249500675958188367076218128204345703125p-376 {- 377058690315365 -376 (-7.0411e-114)}
; Y = 1.7255878004735796249491386333829723298549652099609375p-401 {+ 3267756947837391 -401 (3.34125e-121)}
; -1.0837238479246249500675958188367076218128204345703125p-376 < 1.7255878004735796249491386333829723298549652099609375p-401 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010000111 #b0001010101101110111011010001010010111011010001100101)))
(assert (= y (fp #b0 #b01001101110 #b1011100111000000000111110100000101101001000111001111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
