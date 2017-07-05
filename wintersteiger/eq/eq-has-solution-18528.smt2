(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.05645802910582009559448124491609632968902587890625p-650 {+ 254264358843044 -650 (2.26128e-196)}
; Y = -1.8558981043390032628082053633988834917545318603515625p825 {- 3854622383768249 825 (-4.15241e+248)}
; 1.05645802910582009559448124491609632968902587890625p-650 = -1.8558981043390032628082053633988834917545318603515625p825 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101110101 #b0000111001110100000010001000110010011011001010100100)))
(assert (= y (fp #b1 #b11100111000 #b1101101100011100001000110101111011011000001010111001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
