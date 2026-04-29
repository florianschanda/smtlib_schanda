(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.16431115544471719402963572065345942974090576171875p-366 {+ 739991658433644 -366 (7.74623e-111)}
; Y = -1.7458791098077337533567288119229488074779510498046875p923 {- 3359140880993547 923 (-1.23794e+278)}
; 1.16431115544471719402963572065345942974090576171875p-366 < -1.7458791098077337533567288119229488074779510498046875p923 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010010001 #b0010101000010000010010111011111100000000110001101100)))
(assert (= y (fp #b1 #b11110011010 #b1011111011110001111011101110111101100100110100001011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
