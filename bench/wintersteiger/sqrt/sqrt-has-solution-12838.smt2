(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.465633588979895929327312842360697686672210693359375p-372 {+ 2097027257821046 -372 (1.52359e-112)}
; 1.465633588979895929327312842360697686672210693359375p-372 S == 1.2106335485934198725743726754444651305675506591796875p-186
; [HW: 1.2106335485934198725743726754444651305675506591796875p-186] 

; mpf : + 948609170957051 -186
; mpfd: + 948609170957051 -186 (1.23434e-056) class: Pos. norm. non-zero
; hwf : + 948609170957051 -186 (1.23434e-056) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010001011 #b0111011100110011110000110100110010010110011101110110)))
(assert (= r (fp #b0 #b01101000101 #b0011010111101100000101001000101010100110001011111011)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
