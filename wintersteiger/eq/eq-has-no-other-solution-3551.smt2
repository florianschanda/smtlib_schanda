(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8437109004197236306055174281937070190906524658203125p-788 {- 3799736096738693 -788 (-1.13255e-237)}
; Y = 1.87000057171701872249514053692109882831573486328125p48 {+ 3918134250596884 48 (5.26358e+014)}
; -1.8437109004197236306055174281937070190906524658203125p-788 = 1.87000057171701872249514053692109882831573486328125p48 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011101011 #b1101011111111101011100000000010010010100110110000101)))
(assert (= y (fp #b0 #b10000101111 #b1101111010111000010110111000001100000110101000010100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
