(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5382681713492158959155631237081252038478851318359375p-896 {- 2424144335913727 -896 (-2.91176e-270)}
; Y = 1.2191694893686080281014483261969871819019317626953125p358 {+ 987051630651445 358 (7.15818e+107)}
; -1.5382681713492158959155631237081252038478851318359375p-896 < 1.2191694893686080281014483261969871819019317626953125p358 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001111111 #b1000100111001011111100010110000001101100001011111111)))
(assert (= y (fp #b0 #b10101100101 #b0011100000011011011111011101110100011110100000110101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
