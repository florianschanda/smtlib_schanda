(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9035989631196275073676815736689604818820953369140625p385 {+ 4069447953597921 385 (1.50011e+116)}
; Y = -1.2731264283998477981896257915650494396686553955078125p623 {- 1230052081166589 623 (-4.43158e+187)}
; 1.9035989631196275073676815736689604818820953369140625p385 = -1.2731264283998477981896257915650494396686553955078125p623 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110000000 #b1110011101010010010000101111101101001100010111100001)))
(assert (= y (fp #b1 #b11001101110 #b0100010111101011100111010001010110100110100011111101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
