(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.141236664841998038610881849308498203754425048828125p932 {- 636073391153474 932 (-4.14316e+280)}
; Y = -1.135550259050248644854264057357795536518096923828125p-71 {- 610464096148674 -71 (-4.80924e-022)}
; -1.141236664841998038610881849308498203754425048828125p932 = -1.135550259050248644854264057357795536518096923828125p-71 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110100011 #b0010010000101000000101100000100001111110000101000010)))
(assert (= y (fp #b1 #b01110111000 #b0010001010110011011010111111100110010101110011000010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
