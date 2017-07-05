(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.87505336721052540127629981725476682186126708984375p642 {- 3940890018498620 642 (-3.42193e+193)}
; Y = -1.96284526842807327540185724501498043537139892578125p531 {- 4336269592108116 531 (-1.37979e+160)}
; -1.87505336721052540127629981725476682186126708984375p642 > -1.96284526842807327540185724501498043537139892578125p531 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010000001 #b1110000000000011011111110101101001101100100000111100)))
(assert (= y (fp #b1 #b11000010010 #b1111011001111101000001110000101100000001110001010100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
