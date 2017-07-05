(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3087287587646951880770984644186682999134063720703125p913 {+ 1390390722931237 913 (9.06224e+274)}
; 1.3087287587646951880770984644186682999134063720703125p913 | == 1.3087287587646951880770984644186682999134063720703125p913
; [HW: 1.3087287587646951880770984644186682999134063720703125p913] 

; mpf : + 1390390722931237 913
; mpfd: + 1390390722931237 913 (9.06224e+274) class: Pos. norm. non-zero
; hwf : + 1390390722931237 913 (9.06224e+274) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110010000 #b0100111100001000110110010001001000111010101000100101)))
(assert (= r (fp #b0 #b11110010000 #b0100111100001000110110010001001000111010101000100101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
