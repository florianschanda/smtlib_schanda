(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.507786276892615351385984467924572527408599853515625p637 {- 2286866087397434 637 (-8.59898e+191)}
; -1.507786276892615351385984467924572527408599853515625p637 | == 1.507786276892615351385984467924572527408599853515625p637
; [HW: 1.507786276892615351385984467924572527408599853515625p637] 

; mpf : + 2286866087397434 637
; mpfd: + 2286866087397434 637 (8.59898e+191) class: Pos. norm. non-zero
; hwf : + 2286866087397434 637 (8.59898e+191) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001111100 #b1000000111111110010010000000110010011100100000111010)))
(assert (= r (fp #b0 #b11001111100 #b1000000111111110010010000000110010011100100000111010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
