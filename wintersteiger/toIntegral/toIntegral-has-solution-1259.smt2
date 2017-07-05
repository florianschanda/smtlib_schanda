(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8378433247148004969773182892822660505771636962890625 479 {- 3773310884980433 479 (-2.86864e+144)}
; -1.8378433247148004969773182892822660505771636962890625 479 I == -1.8378433247148004969773182892822660505771636962890625 479
; [HW: -1.8378433247148004969773182892822660505771636962890625 479] 

; mpf : - 3773310884980433 479
; mpfd: - 3773310884980433 479 (-2.86864e+144) class: Neg. norm. non-zero
; hwf : - 3773310884980433 479 (-2.86864e+144) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111011110 #b1101011001111100111001100110111011010010011011010001)))
(assert (= r (fp #b1 #b10111011110 #b1101011001111100111001100110111011010010011011010001)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
