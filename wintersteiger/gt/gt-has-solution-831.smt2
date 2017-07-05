(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9965162319558593662094381215865723788738250732421875p955 {- 4487910130905059 955 (-6.08021e+287)}
; Y = 1.5869390528628766201535427171620540320873260498046875p893 {+ 2643338499762443 893 (1.04796e+269)}
; -1.9965162319558593662094381215865723788738250732421875p955 > 1.5869390528628766201535427171620540320873260498046875p893 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110111010 #b1111111100011011101100000001001000101110111111100011)))
(assert (= y (fp #b0 #b11101111100 #b1001011001000001101000110100010011001010100100001011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
