(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6761332340449415223559981313883326947689056396484375p566 {+ 3045033380897607 566 (4.04842e+170)}
; 1.6761332340449415223559981313883326947689056396484375p566 | == 1.6761332340449415223559981313883326947689056396484375p566
; [HW: 1.6761332340449415223559981313883326947689056396484375p566] 

; mpf : + 3045033380897607 566
; mpfd: + 3045033380897607 566 (4.04842e+170) class: Pos. norm. non-zero
; hwf : + 3045033380897607 566 (4.04842e+170) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000110101 #b1010110100010111000100010100111111110110001101000111)))
(assert (= r (fp #b0 #b11000110101 #b1010110100010111000100010100111111110110001101000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
