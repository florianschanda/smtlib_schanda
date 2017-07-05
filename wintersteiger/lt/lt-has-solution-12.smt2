(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6023605779166689710990567618864588439464569091796875p-472 {- 2712790874248187 -472 (-1.31402e-142)}
; Y = -1.330182155245363428974769703927449882030487060546875p98 {- 1487008231327406 98 (-4.21552e+029)}
; -1.6023605779166689710990567618864588439464569091796875p-472 < -1.330182155245363428974769703927449882030487060546875p98 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000100111 #b1001101000110100010011011000011010001101001111111011)))
(assert (= y (fp #b1 #b10001100001 #b0101010010000110110100010101011010000000011010101110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
