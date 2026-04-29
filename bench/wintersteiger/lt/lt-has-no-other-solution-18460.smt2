(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9787590887920070148453532965504564344882965087890625p-469 {- 4407939067569169 -469 (-1.29815e-141)}
; Y = 1.8281919326850093465708368967170827090740203857421875p-1014 {+ 3729844879431459 -1014 (1.04137e-305)}
; -1.9787590887920070148453532965504564344882965087890625p-469 < 1.8281919326850093465708368967170827090740203857421875p-1014 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000101010 #b1111101010001111111101001010010100000110010000010001)))
(assert (= y (fp #b0 #b00000001001 #b1101010000000100011000101111000110110001011100100011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
