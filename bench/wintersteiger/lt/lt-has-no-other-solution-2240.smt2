(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5882868989215273014536933260387741029262542724609375p-788 {- 2649408658769935 -788 (-9.75646e-238)}
; Y = 1.41947636685943567869117032387293875217437744140625p-39 {+ 1889153609478884 -39 (2.58201e-012)}
; -1.5882868989215273014536933260387741029262542724609375p-788 < 1.41947636685943567869117032387293875217437744140625p-39 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011101011 #b1001011010011001111110000101111110001000100000001111)))
(assert (= y (fp #b0 #b01111011000 #b0110101101100010110011011001110100011011001011100100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
