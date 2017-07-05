(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1067033949447429019841138142510317265987396240234375p957 {+ 480549369712311 957 (1.34815e+288)}
; Y = -1.2835142089205671123153251755866222083568572998046875p945 {- 1276834485648907 945 (-3.81721e+284)}
; 1.1067033949447429019841138142510317265987396240234375p957 > -1.2835142089205671123153251755866222083568572998046875p945 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110111100 #b0001101101010000111010011110011110101000111010110111)))
(assert (= y (fp #b1 #b11110110000 #b0100100010010100011000110001111101000011111000001011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
