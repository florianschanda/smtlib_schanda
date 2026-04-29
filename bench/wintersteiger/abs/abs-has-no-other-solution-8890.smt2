(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3448821404670201484776725919800810515880584716796875p499 {+ 1553211079294011 499 (2.20116e+150)}
; 1.3448821404670201484776725919800810515880584716796875p499 | == 1.3448821404670201484776725919800810515880584716796875p499
; [HW: 1.3448821404670201484776725919800810515880584716796875p499] 

; mpf : + 1553211079294011 499
; mpfd: + 1553211079294011 499 (2.20116e+150) class: Pos. norm. non-zero
; hwf : + 1553211079294011 499 (2.20116e+150) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111110010 #b0101100001001010001100100010101001000111110000111011)))
(assert (= r (fp #b0 #b10111110010 #b0101100001001010001100100010101001000111110000111011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
