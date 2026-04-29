(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.994102811602901592635816996335051953792572021484375p743 {+ 4477041051902790 743 (9.22644e+223)}
; 1.994102811602901592635816996335051953792572021484375p743 | == 1.994102811602901592635816996335051953792572021484375p743
; [HW: 1.994102811602901592635816996335051953792572021484375p743] 

; mpf : + 4477041051902790 743
; mpfd: + 4477041051902790 743 (9.22644e+223) class: Pos. norm. non-zero
; hwf : + 4477041051902790 743 (9.22644e+223) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011100110 #b1111111001111101100001011001100010110010001101000110)))
(assert (= r (fp #b0 #b11011100110 #b1111111001111101100001011001100010110010001101000110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
