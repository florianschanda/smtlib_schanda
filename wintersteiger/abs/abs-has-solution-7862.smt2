(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1117802165208445774879919554223306477069854736328125p893 {+ 503413341470669 893 (7.34184e+268)}
; 1.1117802165208445774879919554223306477069854736328125p893 | == 1.1117802165208445774879919554223306477069854736328125p893
; [HW: 1.1117802165208445774879919554223306477069854736328125p893] 

; mpf : + 503413341470669 893
; mpfd: + 503413341470669 893 (7.34184e+268) class: Pos. norm. non-zero
; hwf : + 503413341470669 893 (7.34184e+268) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101111100 #b0001110010011101101000001101011001001011111111001101)))
(assert (= r (fp #b0 #b11101111100 #b0001110010011101101000001101011001001011111111001101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
