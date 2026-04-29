(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9008795575608308237036681020981632173061370849609375p-449 {+ 4057200839736655 -449 (1.30764e-135)}
; Y = -1.3091349847881110779468372129485942423343658447265625p-549 {- 1392220202298921 -549 (-7.10423e-166)}
; 1.9008795575608308237036681020981632173061370849609375p-449 = -1.3091349847881110779468372129485942423343658447265625p-549 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000111110 #b1110011010100000000010101110110101011011110101001111)))
(assert (= y (fp #b1 #b00111011010 #b0100111100100011011110000110100110110110111000101001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
