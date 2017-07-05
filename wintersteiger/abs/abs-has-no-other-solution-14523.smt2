(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7091204159640251969420887689921073615550994873046875p460 {+ 3193594441096395 460 (5.08828e+138)}
; 1.7091204159640251969420887689921073615550994873046875p460 | == 1.7091204159640251969420887689921073615550994873046875p460
; [HW: 1.7091204159640251969420887689921073615550994873046875p460] 

; mpf : + 3193594441096395 460
; mpfd: + 3193594441096395 460 (5.08828e+138) class: Pos. norm. non-zero
; hwf : + 3193594441096395 460 (5.08828e+138) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111001011 #b1011010110001000111010100110001101111101110011001011)))
(assert (= r (fp #b0 #b10111001011 #b1011010110001000111010100110001101111101110011001011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
