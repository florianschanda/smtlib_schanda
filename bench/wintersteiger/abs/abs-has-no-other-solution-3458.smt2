(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.027535089141363044973331852816045284271240234375p748 {- 124007017196656 748 (-1.52136e+225)}
; -1.027535089141363044973331852816045284271240234375p748 | == 1.027535089141363044973331852816045284271240234375p748
; [HW: 1.027535089141363044973331852816045284271240234375p748] 

; mpf : + 124007017196656 748
; mpfd: + 124007017196656 748 (1.52136e+225) class: Pos. norm. non-zero
; hwf : + 124007017196656 748 (1.52136e+225) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011101011 #b0000011100001100100010100010001101011010110001110000)))
(assert (= r (fp #b0 #b11011101011 #b0000011100001100100010100010001101011010110001110000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
