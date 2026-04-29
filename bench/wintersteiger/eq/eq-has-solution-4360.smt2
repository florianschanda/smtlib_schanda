(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0974401673141824797852450501522980630397796630859375p846 {- 438831501207071 846 (-5.14941e+254)}
; Y = -1.3390890366589278670517160207964479923248291015625p477 {- 1527121259142568 477 (-5.22537e+143)}
; -1.0974401673141824797852450501522980630397796630859375p846 = -1.3390890366589278670517160207964479923248291015625p477 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101001101 #b0001100011110001110101101011101111101110011000011111)))
(assert (= y (fp #b1 #b10111011100 #b0101011011001110100010100000001011100001110110101000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
