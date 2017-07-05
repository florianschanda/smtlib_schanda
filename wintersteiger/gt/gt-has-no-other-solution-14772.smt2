(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6334659315201920382065736703225411474704742431640625p770 {- 2852876933146241 770 (-1.01439e+232)}
; Y = -1.001709889884432325146690345718525350093841552734375p925 {- 7700659446374 925 (-2.84111e+278)}
; -1.6334659315201920382065736703225411474704742431640625p770 > -1.001709889884432325146690345718525350093841552734375p925 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100000001 #b1010001000101010110100101100001100000010011010000001)))
(assert (= y (fp #b1 #b11110011100 #b0000000001110000000011110011000100100010001001100110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
