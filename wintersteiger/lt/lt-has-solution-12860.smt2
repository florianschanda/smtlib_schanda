(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5119185629633451473097238704212941229343414306640625p835 {+ 2305476249405761 835 (3.46398e+251)}
; Y = 1.9757939942048017289977224208996631205081939697265625p111 {+ 4394585468691113 111 (5.12945e+033)}
; 1.5119185629633451473097238704212941229343414306640625p835 < 1.9757939942048017289977224208996631205081939697265625p111 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101000010 #b1000001100001101000110000100111000100100100101000001)))
(assert (= y (fp #b0 #b10001101110 #b1111100111001101101000101001110010111110001010101001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
