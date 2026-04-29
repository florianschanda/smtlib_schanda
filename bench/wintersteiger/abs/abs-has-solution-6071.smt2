(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.944141800987902346520286300801672041416168212890625p158 {- 4252036663114026 158 (-7.10342e+047)}
; -1.944141800987902346520286300801672041416168212890625p158 | == 1.944141800987902346520286300801672041416168212890625p158
; [HW: 1.944141800987902346520286300801672041416168212890625p158] 

; mpf : + 4252036663114026 158
; mpfd: + 4252036663114026 158 (7.10342e+047) class: Pos. norm. non-zero
; hwf : + 4252036663114026 158 (7.10342e+047) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010011101 #b1111000110110011010001101110111000000111100100101010)))
(assert (= r (fp #b0 #b10010011101 #b1111000110110011010001101110111000000111100100101010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
