(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.092423596007621622305805431096814572811126708984375p-548 {- 416238872540166 -548 (-1.18564e-165)}
; Y = -1.63008935937741750166196652571670711040496826171875p-893 {- 2837670204102252 -893 (-2.46846e-269)}
; -1.092423596007621622305805431096814572811126708984375p-548 > -1.63008935937741750166196652571670711040496826171875p-893 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111011011 #b0001011110101001000100101010001000111011010000000110)))
(assert (= y (fp #b1 #b00010000010 #b1010000101001101100010010100100000010101011001101100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
