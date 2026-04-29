(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5291541139091349155165744377882219851016998291015625p923 {- 2383098270222745 923 (-1.08427e+278)}
; -1.5291541139091349155165744377882219851016998291015625p923 | == 1.5291541139091349155165744377882219851016998291015625p923
; [HW: 1.5291541139091349155165744377882219851016998291015625p923] 

; mpf : + 2383098270222745 923
; mpfd: + 2383098270222745 923 (1.08427e+278) class: Pos. norm. non-zero
; hwf : + 2383098270222745 923 (1.08427e+278) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110011010 #b1000011101110110101001001101110111001000100110011001)))
(assert (= r (fp #b0 #b11110011010 #b1000011101110110101001001101110111001000100110011001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
