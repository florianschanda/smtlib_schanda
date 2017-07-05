(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.470061088638038082621051216847263276576995849609375p-90 {- 2116966943631638 -90 (-1.18751e-027)}
; -1.470061088638038082621051216847263276576995849609375p-90 | == 1.470061088638038082621051216847263276576995849609375p-90
; [HW: 1.470061088638038082621051216847263276576995849609375p-90] 

; mpf : + 2116966943631638 -90
; mpfd: + 2116966943631638 -90 (1.18751e-027) class: Pos. norm. non-zero
; hwf : + 2116966943631638 -90 (1.18751e-027) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110100101 #b0111100001010101111011000110101011010010100100010110)))
(assert (= r (fp #b0 #b01110100101 #b0111100001010101111011000110101011010010100100010110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
