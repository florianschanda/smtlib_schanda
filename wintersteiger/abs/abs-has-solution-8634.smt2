(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1703659337837681864158412281540222465991973876953125p-221 {+ 767259955905205 -221 (3.4729e-067)}
; 1.1703659337837681864158412281540222465991973876953125p-221 | == 1.1703659337837681864158412281540222465991973876953125p-221
; [HW: 1.1703659337837681864158412281540222465991973876953125p-221] 

; mpf : + 767259955905205 -221
; mpfd: + 767259955905205 -221 (3.4729e-067) class: Pos. norm. non-zero
; hwf : + 767259955905205 -221 (3.4729e-067) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100100010 #b0010101110011101000110100001000111110100001010110101)))
(assert (= r (fp #b0 #b01100100010 #b0010101110011101000110100001000111110100001010110101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
