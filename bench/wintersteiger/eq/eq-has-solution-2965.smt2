(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4806286179952490300593126448802649974822998046875p100 {+ 2164558864907000 100 (1.87692e+030)}
; Y = 1.3381483436670340569918380424496717751026153564453125p206 {+ 1522884754534805 206 (1.37621e+062)}
; 1.4806286179952490300593126448802649974822998046875p100 = 1.3381483436670340569918380424496717751026153564453125p206 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001100011 #b0111101100001010011110100010001111001111101011111000)))
(assert (= y (fp #b0 #b10011001101 #b0101011010010000111000111100110100111111000110010101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
