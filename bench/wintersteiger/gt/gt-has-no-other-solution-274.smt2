(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4176829106275139480430880212225019931793212890625p-375 {- 1881076600661096 -375 (-1.84217e-113)}
; Y = 1.3672578143227303026918661998934112489223480224609375p884 {+ 1653982155732751 884 (1.76346e+266)}
; -1.4176829106275139480430880212225019931793212890625p-375 > 1.3672578143227303026918661998934112489223480224609375p884 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010001000 #b0110101011101101010001000110100100111110010001101000)))
(assert (= y (fp #b0 #b11101110011 #b0101111000000100100110111010110110110111011100001111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
