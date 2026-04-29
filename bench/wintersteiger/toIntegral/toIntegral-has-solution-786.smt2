(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8982180198055786934929756171186454594135284423828125 558 {- 4045214339293869 558 (-1.79095e+168)}
; -1.8982180198055786934929756171186454594135284423828125 558 I == -1.8982180198055786934929756171186454594135284423828125 558
; [HW: -1.8982180198055786934929756171186454594135284423828125 558] 

; mpf : - 4045214339293869 558
; mpfd: - 4045214339293869 558 (-1.79095e+168) class: Neg. norm. non-zero
; hwf : - 4045214339293869 558 (-1.79095e+168) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000101101 #b1110010111110001100111011011101110111110001010101101)))
(assert (= r (fp #b1 #b11000101101 #b1110010111110001100111011011101110111110001010101101)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
