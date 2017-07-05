(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.536432289306948195672930523869581520557403564453125p558 {+ 2415876258232274 558 (1.44961e+168)}
; Y = -1.5347607912373943950257171309203840792179107666015625p-464 {- 2408348500149081 -464 (-3.22198e-140)}
; 1.536432289306948195672930523869581520557403564453125p558 * -1.5347607912373943950257171309203840792179107666015625p-464 == -1.179028018009706357815957744605839252471923828125p95
; [HW: -1.179028018009706357815957744605839252471923828125p95] 

; mpf : - 806270515197392 95
; mpfd: - 806270515197392 95 (-4.67061e+028) class: Neg. norm. non-zero
; hwf : - 806270515197392 95 (-4.67061e+028) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000101101 #b1000100101010011101000000110001100010111011111010010)))
(assert (= y (fp #b1 #b01000101111 #b1000100011100110000101010100110110001100001101011001)))
(assert (= r (fp #b1 #b10001011110 #b0010110111010100110001111011101001101011010111010000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
