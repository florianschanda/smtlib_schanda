(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1948367597508802173678077451768331229686737060546875p-85 {+ 877466758612139 -85 (3.08858e-026)}
; Y = -1.25995493150312487529163263388909399509429931640625p667 {- 1170732932650596 667 (-7.71547e+200)}
; 1.1948367597508802173678077451768331229686737060546875p-85 > -1.25995493150312487529163263388909399509429931640625p667 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110101010 #b0011000111100000110100100110011100110000010010101011)))
(assert (= y (fp #b1 #b11010011010 #b0100001010001100011010000000100100111101011001100100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
