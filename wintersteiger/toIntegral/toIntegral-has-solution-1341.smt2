(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1056280675667873314438338638865388929843902587890625 521 {+ 475706525733649 521 (7.58991e+156)}
; 1.1056280675667873314438338638865388929843902587890625 521 I == 1.1056280675667873314438338638865388929843902587890625 521
; [HW: 1.1056280675667873314438338638865388929843902587890625 521] 

; mpf : + 475706525733649 521
; mpfd: + 475706525733649 521 (7.58991e+156) class: Pos. norm. non-zero
; hwf : + 475706525733649 521 (7.58991e+156) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000001000 #b0001101100001010011100001110011110111101001100010001)))
(assert (= r (fp #b0 #b11000001000 #b0001101100001010011100001110011110111101001100010001)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
