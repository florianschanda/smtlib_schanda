(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = NaN {- 3365563833149921 1024 (-1.#QNAN)}
; Y = -1.588445382594255050889842095784842967987060546875p166 {- 2650122405779376 166 (-1.48577e+050)}
; NaN m -1.588445382594255050889842095784842967987060546875p166 == -1.588445382594255050889842095784842967987060546875p166
; [HW: -1.588445382594255050889842095784842967987060546875p166] 

; mpf : - 2650122405779376 166
; mpfd: - 2650122405779376 166 (-1.48577e+050) class: Neg. norm. non-zero
; hwf : - 2650122405779376 166 (-1.48577e+050) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ NaN 11 53)))
(assert (= y (fp #b1 #b10010100101 #b1001011010100100010110110100100110111001011110110000)))
(assert (= r (fp #b1 #b10010100101 #b1001011010100100010110110100100110111001011110110000)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
