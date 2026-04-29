(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.951292011052021546646528804558329284191131591796875p-1008 {+ 4284238346494414 -1008 (7.11355e-304)}
; Y = -1.6540080777785044485739263109280727803707122802734375p-609 {- 2945390535380567 -609 (-7.78521e-184)}
; 1.951292011052021546646528804558329284191131591796875p-1008 > -1.6540080777785044485739263109280727803707122802734375p-609 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000001111 #b1111001110000111110111111000110001101010000111001110)))
(assert (= y (fp #b1 #b00110011110 #b1010011101101101000100101100100101100000111001010111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
