(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1215899053552134123634687057347036898136138916015625p30 {+ 547592252449753 30 (1.2043e+009)}
; 1.1215899053552134123634687057347036898136138916015625p30 | == 1.1215899053552134123634687057347036898136138916015625p30
; [HW: 1.1215899053552134123634687057347036898136138916015625p30] 

; mpf : + 547592252449753 30
; mpfd: + 547592252449753 30 (1.2043e+009) class: Pos. norm. non-zero
; hwf : + 547592252449753 30 (1.2043e+009) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000011101 #b0001111100100000100001000001101100000110001111011001)))
(assert (= r (fp #b0 #b10000011101 #b0001111100100000100001000001101100000110001111011001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
