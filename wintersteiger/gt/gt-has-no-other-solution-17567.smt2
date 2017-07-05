(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9408912900685610924966795209911651909351348876953125p364 {+ 4237397663348917 364 (7.29323e+109)}
; Y = 1.352521753012218663769772319938056170940399169921875p789 {+ 1587616835505822 789 (4.40363e+237)}
; 1.9408912900685610924966795209911651909351348876953125p364 > 1.352521753012218663769772319938056170940399169921875p789 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101101011 #b1111000011011110010000000110011111101111100010110101)))
(assert (= y (fp #b0 #b11100010100 #b0101101000111110110111011001100001010000111010011110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
