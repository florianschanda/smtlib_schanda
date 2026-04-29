(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.335839777571484976448346060351468622684478759765625p401 {+ 1512487897127130 401 (6.89894e+120)}
; 1.335839777571484976448346060351468622684478759765625p401 | == 1.335839777571484976448346060351468622684478759765625p401
; [HW: 1.335839777571484976448346060351468622684478759765625p401] 

; mpf : + 1512487897127130 401
; mpfd: + 1512487897127130 401 (6.89894e+120) class: Pos. norm. non-zero
; hwf : + 1512487897127130 401 (6.89894e+120) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110010000 #b0101010111111001100110000111110101011101100011011010)))
(assert (= r (fp #b0 #b10110010000 #b0101010111111001100110000111110101011101100011011010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
