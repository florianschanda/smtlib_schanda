(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0512662028378059186906057220767252147197723388671875p-1009 {+ 230882451997043 -1009 (1.91623e-304)}
; Y = 1.1339330058464367478876511086127720773220062255859375p-378 {+ 603180635222623 -378 (1.84183e-114)}
; 1.0512662028378059186906057220767252147197723388671875p-1009 > 1.1339330058464367478876511086127720773220062255859375p-378 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000001110 #b0000110100011111110010000010100010010100000101110011)))
(assert (= y (fp #b0 #b01010000101 #b0010001001001001011011101111011111110111001001011111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
