(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.907346355600527676443789459881372749805450439453125p458 {- 4086324708978514 458 (-1.41961e+138)}
; Y = -1.3952197256963980720456675044260919094085693359375p245 {- 1779911409375768 245 (-7.88845e+073)}
; -1.907346355600527676443789459881372749805450439453125p458 - -1.3952197256963980720456675044260919094085693359375p245 == -1.907346355600527676443789459881372749805450439453125p458
; [HW: -1.907346355600527676443789459881372749805450439453125p458] 

; mpf : - 4086324708978514 458
; mpfd: - 4086324708978514 458 (-1.41961e+138) class: Neg. norm. non-zero
; hwf : - 4086324708978514 458 (-1.41961e+138) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111001001 #b1110100001000111110110011100101101110010111101010010)))
(assert (= y (fp #b1 #b10011110100 #b0110010100101101000111101011010010011001101000011000)))
(assert (= r (fp #b1 #b10111001001 #b1110100001000111110110011100101101110010111101010010)))
(assert  (not (= (fp.sub roundTowardNegative x y) r)))
(check-sat)
(exit)
