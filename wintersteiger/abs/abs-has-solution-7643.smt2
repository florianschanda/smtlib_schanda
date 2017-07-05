(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3393077820020506951692595976055599749088287353515625p-517 {- 1528106400588345 -517 (-3.12157e-156)}
; -1.3393077820020506951692595976055599749088287353515625p-517 | == 1.3393077820020506951692595976055599749088287353515625p-517
; [HW: 1.3393077820020506951692595976055599749088287353515625p-517] 

; mpf : + 1528106400588345 -517
; mpfd: + 1528106400588345 -517 (3.12157e-156) class: Pos. norm. non-zero
; hwf : + 1528106400588345 -517 (3.12157e-156) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111111010 #b0101011011011100110111111111001011111010001000111001)))
(assert (= r (fp #b0 #b00111111010 #b0101011011011100110111111111001011111010001000111001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
