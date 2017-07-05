(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7354234631988816328629354757140390574932098388671875p-980 {+ 3312052834822003 -980 (1.69828e-295)}
; Y = 1.44914870408345652919024360016919672489166259765625p699 {+ 2022785936344196 699 (3.81136e+210)}
; 1.7354234631988816328629354757140390574932098388671875p-980 = 1.44914870408345652919024360016919672489166259765625p699 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000101011 #b1011110001000100101101100100101100100110011101110011)))
(assert (= y (fp #b0 #b11010111010 #b0111001011111011011010001101001100010100010010000100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
