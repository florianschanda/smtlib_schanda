(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.70841969802710291759240135434083640575408935546875p267 {+ 3190438688056780 267 (4.05138e+080)}
; 1.70841969802710291759240135434083640575408935546875p267 | == 1.70841969802710291759240135434083640575408935546875p267
; [HW: 1.70841969802710291759240135434083640575408935546875p267] 

; mpf : + 3190438688056780 267
; mpfd: + 3190438688056780 267 (4.05138e+080) class: Pos. norm. non-zero
; hwf : + 3190438688056780 267 (4.05138e+080) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100001010 #b1011010101011010111111100100101011011110010111001100)))
(assert (= r (fp #b0 #b10100001010 #b1011010101011010111111100100101011011110010111001100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
