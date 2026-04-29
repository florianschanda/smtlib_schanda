(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.561089867819745347077287078718654811382293701171875p-840 {+ 2526924119634366 -840 (2.12927e-253)}
; 1.561089867819745347077287078718654811382293701171875p-840 | == 1.561089867819745347077287078718654811382293701171875p-840
; [HW: 1.561089867819745347077287078718654811382293701171875p-840] 

; mpf : + 2526924119634366 -840
; mpfd: + 2526924119634366 -840 (2.12927e-253) class: Pos. norm. non-zero
; hwf : + 2526924119634366 -840 (2.12927e-253) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010110111 #b1000111110100011100101011110100001100111000110111110)))
(assert (= r (fp #b0 #b00010110111 #b1000111110100011100101011110100001100111000110111110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
