(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5244614336319044500811514808447100222110748291015625p-945 {+ 2361964317074841 -945 (5.1259e-285)}
; Y = 1.3465312637845758825250186418998055160045623779296875p271 {+ 1560638070452443 271 (5.10911e+081)}
; 1.5244614336319044500811514808447100222110748291015625p-945 = 1.3465312637845758825250186418998055160045623779296875p271 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001001110 #b1000011001000011000110101100000101110110010110011001)))
(assert (= y (fp #b0 #b10100001110 #b0101100010110110010001011101110011111111000011011011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
