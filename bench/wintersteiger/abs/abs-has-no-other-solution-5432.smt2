(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8837852133746493255017639967263676226139068603515625p780 {+ 3980214757629625 780 (1.19792e+235)}
; 1.8837852133746493255017639967263676226139068603515625p780 | == 1.8837852133746493255017639967263676226139068603515625p780
; [HW: 1.8837852133746493255017639967263676226139068603515625p780] 

; mpf : + 3980214757629625 780
; mpfd: + 3980214757629625 780 (1.19792e+235) class: Pos. norm. non-zero
; hwf : + 3980214757629625 780 (1.19792e+235) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100001011 #b1110001000111111101111110110110000100001111010111001)))
(assert (= r (fp #b0 #b11100001011 #b1110001000111111101111110110110000100001111010111001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
