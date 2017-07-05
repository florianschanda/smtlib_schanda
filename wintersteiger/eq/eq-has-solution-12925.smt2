(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0570938924601402941760852627339772880077362060546875p-650 {+ 257128032808619 -650 (2.26264e-196)}
; Y = 1.85360354612200328716653530136682093143463134765625p931 {+ 3844288612237188 931 (3.36467e+280)}
; 1.0570938924601402941760852627339772880077362060546875p-650 = 1.85360354612200328716653530136682093143463134765625p931 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101110101 #b0000111010011101101101001001000011101010111010101011)))
(assert (= y (fp #b0 #b11110100010 #b1101101010000101110000110001001001010111111110000100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
