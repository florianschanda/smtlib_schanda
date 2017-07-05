(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.860542175315079038711019165930338203907012939453125p477 {- 3875537420085586 477 (-7.26018e+143)}
; Y = -1.922414680207058079730586541700176894664764404296875p-504 {- 4154186410061582 -504 (-3.67053e-152)}
; -1.860542175315079038711019165930338203907012939453125p477 < -1.922414680207058079730586541700176894664764404296875p-504 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111011100 #b1101110001001100011111011111001111001110100101010010)))
(assert (= y (fp #b1 #b01000000111 #b1110110000100011010111100101010011010110111100001110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
