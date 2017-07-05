(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7571344854379216116058159968815743923187255859375p-937 {- 3409830586487576 -937 (-1.51251e-282)}
; -1.7571344854379216116058159968815743923187255859375p-937 | == 1.7571344854379216116058159968815743923187255859375p-937
; [HW: 1.7571344854379216116058159968815743923187255859375p-937] 

; mpf : + 3409830586487576 -937
; mpfd: + 3409830586487576 -937 (1.51251e-282) class: Pos. norm. non-zero
; hwf : + 3409830586487576 -937 (1.51251e-282) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001010110 #b1100000111010011100100001100110110100001001100011000)))
(assert (= r (fp #b0 #b00001010110 #b1100000111010011100100001100110110100001001100011000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
