(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7100263373920039366993250951054506003856658935546875p231 {+ 3197674348501867 231 (5.90108e+069)}
; 1.7100263373920039366993250951054506003856658935546875p231 | == 1.7100263373920039366993250951054506003856658935546875p231
; [HW: 1.7100263373920039366993250951054506003856658935546875p231] 

; mpf : + 3197674348501867 231
; mpfd: + 3197674348501867 231 (5.90108e+069) class: Pos. norm. non-zero
; hwf : + 3197674348501867 231 (5.90108e+069) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011100110 #b1011010111000100010010010011101001100101101101101011)))
(assert (= r (fp #b0 #b10011100110 #b1011010111000100010010010011101001100101101101101011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
