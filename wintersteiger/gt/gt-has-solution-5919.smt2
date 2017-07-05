(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2122349482458243397076103065046481788158416748046875p942 {+ 955821233834891 942 (4.50653e+283)}
; Y = -1.0382039463085932506913877659826539456844329833984375p807 {- 172055278359463 807 (-8.86113e+242)}
; 1.2122349482458243397076103065046481788158416748046875p942 > -1.0382039463085932506913877659826539456844329833984375p807 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110101101 #b0011011001010101000001111001000111001000101110001011)))
(assert (= y (fp #b1 #b11100100110 #b0000100111000111101110111101101111111001001110100111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
