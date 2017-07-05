(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9791228760687629151249211645335890352725982666015625p41 {- 4409577419813209 41 (-4.35214e+012)}
; Y = -1.782411799961394205382703148643486201763153076171875p180 {- 3523669490756414 180 (-2.73154e+054)}
; -1.9791228760687629151249211645335890352725982666015625p41 > -1.782411799961394205382703148643486201763153076171875p180 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000101000 #b1111101010100111110010111111101101111011000101011001)))
(assert (= y (fp #b1 #b10010110011 #b1100100001001100001000111100010011010110101100111110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
