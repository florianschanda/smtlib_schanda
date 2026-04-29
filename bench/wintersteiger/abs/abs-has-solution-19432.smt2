(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0236936309382056453642917404067702591419219970703125p162 {+ 106706627464357 162 (5.98452e+048)}
; 1.0236936309382056453642917404067702591419219970703125p162 | == 1.0236936309382056453642917404067702591419219970703125p162
; [HW: 1.0236936309382056453642917404067702591419219970703125p162] 

; mpf : + 106706627464357 162
; mpfd: + 106706627464357 162 (5.98452e+048) class: Pos. norm. non-zero
; hwf : + 106706627464357 162 (5.98452e+048) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010100001 #b0000011000010000110010010010101000000000110010100101)))
(assert (= r (fp #b0 #b10010100001 #b0000011000010000110010010010101000000000110010100101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
