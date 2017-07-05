(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.564211108223672486161603956134058535099029541015625p575 {- 2540980936754426 575 (-1.93438e+173)}
; -1.564211108223672486161603956134058535099029541015625p575 | == 1.564211108223672486161603956134058535099029541015625p575
; [HW: 1.564211108223672486161603956134058535099029541015625p575] 

; mpf : + 2540980936754426 575
; mpfd: + 2540980936754426 575 (1.93438e+173) class: Pos. norm. non-zero
; hwf : + 2540980936754426 575 (1.93438e+173) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000111110 #b1001000001110000001000111010000111011100010011111010)))
(assert (= r (fp #b0 #b11000111110 #b1001000001110000001000111010000111011100010011111010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
