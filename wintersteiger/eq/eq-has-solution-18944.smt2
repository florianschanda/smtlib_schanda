(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1597438808871147752910246708779595792293548583984375p-1010 {- 719422482437927 -1010 (-1.05698e-304)}
; Y = -zero {- 0 -1023 (-0)}
; -1.1597438808871147752910246708779595792293548583984375p-1010 = -zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000001101 #b0010100011100100111110011001100000100101011100100111)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
