(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.16373798408833817319418812985531985759735107421875p-918 {- 737410324126636 -918 (-5.25193e-277)}
; Y = 1.0837356621830711578269301753607578575611114501953125p439 {+ 377111897005301 439 (1.53848e+132)}
; -1.16373798408833817319418812985531985759735107421875p-918 > 1.0837356621830711578269301753607578575611114501953125p439 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001101001 #b0010100111101010101110111000011011000101101110101100)))
(assert (= y (fp #b0 #b10110110110 #b0001010101101111101100110100101010010101110011110101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
