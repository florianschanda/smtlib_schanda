(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1439189552549040573836691692122258245944976806640625p616 {- 648153353257537 616 (-3.1108e+185)}
; Y = -1.72643265219324160142377877491526305675506591796875p-293 {- 3271561821727244 -293 (-1.08483e-088)}
; -1.1439189552549040573836691692122258245944976806640625p616 > -1.72643265219324160142377877491526305675506591796875p-293 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001100111 #b0010010011010111110111110110011000011000001001000001)))
(assert (= y (fp #b1 #b01011011010 #b1011100111110111011111011000001111101010101000001100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
