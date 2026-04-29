(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.614706254280053432381691891350783407688140869140625p-949 {- 2768390857717962 -949 (-3.39334e-286)}
; Y = 1.599136053752062469612837958266027271747589111328125p-113 {+ 2698268908422018 -113 (1.53991e-034)}
; -1.614706254280053432381691891350783407688140869140625p-949 > 1.599136053752062469612837958266027271747589111328125p-113 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001001010 #b1001110101011101011000111001101011000111100011001010)))
(assert (= y (fp #b0 #b01110001110 #b1001100101100000111110101111110010111000001110000010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
