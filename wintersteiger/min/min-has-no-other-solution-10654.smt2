(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8561508209443753347756000948720611631870269775390625p52 {+ 3855760518178033 52 (8.35936e+015)}
; Y = -1.366272254849052014691324075101874768733978271484375p61 {- 1649543590454342 61 (-3.15041e+018)}
; 1.8561508209443753347756000948720611631870269775390625p52 m -1.366272254849052014691324075101874768733978271484375p61 == -1.366272254849052014691324075101874768733978271484375p61
; [HW: -1.366272254849052014691324075101874768733978271484375p61] 

; mpf : - 1649543590454342 61
; mpfd: - 1649543590454342 61 (-3.15041e+018) class: Neg. norm. non-zero
; hwf : - 1649543590454342 61 (-3.15041e+018) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000110011 #b1101101100101100101100110100000001100110010011110001)))
(assert (= y (fp #b1 #b10000111100 #b0101110111000100000001001011110000000010010001000110)))
(assert (= r (fp #b1 #b10000111100 #b0101110111000100000001001011110000000010010001000110)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
