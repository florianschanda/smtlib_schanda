(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.97176572995175103386600312660448253154754638671875p-568 {+ 4376443779302124 -568 (2.04088e-171)}
; Y = 1.5388200200581210186356884150882251560688018798828125p-422 {+ 2426629641553517 -422 (1.42079e-127)}
; 1.97176572995175103386600312660448253154754638671875p-568 < 1.5388200200581210186356884150882251560688018798828125p-422 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111000111 #b1111100011000101101000111000110110000100001011101100)))
(assert (= y (fp #b0 #b01001011001 #b1000100111110000000110111101110010010100011001101101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
