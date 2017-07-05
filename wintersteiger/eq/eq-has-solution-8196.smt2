(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.50139036834166095246700933785177767276763916015625p-113 {+ 2258061476030660 -113 (1.44579e-034)}
; Y = 1.0500837257530075685707515731337480247020721435546875p253 {+ 225557048638571 253 (1.51989e+076)}
; 1.50139036834166095246700933785177767276763916015625p-113 = 1.0500837257530075685707515731337480247020721435546875p253 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110001110 #b1000000001011011000111101000001010001110100011000100)))
(assert (= y (fp #b0 #b10011111100 #b0000110011010010010010010111110000101011110001101011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
