(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.233500707486161918069456078228540718555450439453125p682 {- 1051593699225426 682 (-2.47512e+205)}
; -1.233500707486161918069456078228540718555450439453125p682 | == 1.233500707486161918069456078228540718555450439453125p682
; [HW: 1.233500707486161918069456078228540718555450439453125p682] 

; mpf : + 1051593699225426 682
; mpfd: + 1051593699225426 682 (2.47512e+205) class: Pos. norm. non-zero
; hwf : + 1051593699225426 682 (2.47512e+205) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010101001 #b0011101111000110101100111100111000111110111101010010)))
(assert (= r (fp #b0 #b11010101001 #b0011101111000110101100111100111000111110111101010010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
