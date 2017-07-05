(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6816488267088274266569669634918682277202606201171875p760 {+ 3069873401963411 760 (1.01984e+229)}
; Y = 1.2242017636779942701963364015682600438594818115234375p-561 {+ 1009714979356023 -561 (1.62191e-169)}
; 1.6816488267088274266569669634918682277202606201171875p760 = 1.2242017636779942701963364015682600438594818115234375p-561 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011110111 #b1010111010000000100010011001101000010010001110010011)))
(assert (= y (fp #b0 #b00111001110 #b0011100101100101010010010110101010110011110101110111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
