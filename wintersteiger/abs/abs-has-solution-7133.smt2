(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1117707315678562185468081224826164543628692626953125p191 {+ 503370625039925 191 (3.48935e+057)}
; 1.1117707315678562185468081224826164543628692626953125p191 | == 1.1117707315678562185468081224826164543628692626953125p191
; [HW: 1.1117707315678562185468081224826164543628692626953125p191] 

; mpf : + 503370625039925 191
; mpfd: + 503370625039925 191 (3.48935e+057) class: Pos. norm. non-zero
; hwf : + 503370625039925 191 (3.48935e+057) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010111110 #b0001110010011101000000011011010010111011111000110101)))
(assert (= r (fp #b0 #b10010111110 #b0001110010011101000000011011010010111011111000110101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
