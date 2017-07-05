(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.376463503140835431537425392889417707920074462890625p-591 {+ 1695440892463658 -591 (1.69839e-178)}
; Y = -0.4112999567885065044237080655875615775585174560546875p-1022 {- 1852330332130219 -1023 (-9.15173e-309)}
; 1.376463503140835431537425392889417707920074462890625p-591 > -0.4112999567885065044237080655875615775585174560546875p-1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110110000 #b0110000001011111111010011000001000100000101000101010)))
(assert (= y (fp #b1 #b00000000000 #b0110100101001010111101000011011101000000101110101011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
