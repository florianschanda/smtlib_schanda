(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.521402961212704685323160447296686470508575439453125p659 {- 2348190181827410 659 (-3.63925e+198)}
; -1.521402961212704685323160447296686470508575439453125p659 | == 1.521402961212704685323160447296686470508575439453125p659
; [HW: 1.521402961212704685323160447296686470508575439453125p659] 

; mpf : + 2348190181827410 659
; mpfd: + 2348190181827410 659 (3.63925e+198) class: Pos. norm. non-zero
; hwf : + 2348190181827410 659 (3.63925e+198) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010010010 #b1000010101111010101010100001101001110010001101010010)))
(assert (= r (fp #b0 #b11010010010 #b1000010101111010101010100001101001110010001101010010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
