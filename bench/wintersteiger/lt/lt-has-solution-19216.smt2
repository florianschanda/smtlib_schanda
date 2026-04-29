(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2619120854453722557764194789342582225799560546875p754 {+ 1179547170415608 754 (1.19576e+227)}
; Y = 1.9880525964317674603165642110980115830898284912109375p-662 {+ 4449793305112559 -662 (1.03889e-199)}
; 1.2619120854453722557764194789342582225799560546875p754 < 1.9880525964317674603165642110980115830898284912109375p-662 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011110001 #b0100001100001100101010111010000101101010001111111000)))
(assert (= y (fp #b0 #b00101101001 #b1111110011110001000000111101010001100110111111101111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
