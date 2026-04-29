(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.32584842579196315881517875823192298412322998046875p240 {- 1467490848975948 240 (-2.34257e+072)}
; Y = -1.5094669679424852493099251660169102251529693603515625p378 {- 2294435246983353 378 (-9.29313e+113)}
; -1.32584842579196315881517875823192298412322998046875p240 > -1.5094669679424852493099251660169102251529693603515625p378 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011101111 #b0101001101101010110011010110110000111010110001001100)))
(assert (= y (fp #b1 #b10101111001 #b1000001001101100011011010101110110110100100010111001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
