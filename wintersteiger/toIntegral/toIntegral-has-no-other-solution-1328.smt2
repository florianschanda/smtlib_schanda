(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.43028388303109554868797204107977449893951416015625 507 {+ 1937826335282372 507 (5.9928e+152)}
; 1.43028388303109554868797204107977449893951416015625 507 I == 1.43028388303109554868797204107977449893951416015625 507
; [HW: 1.43028388303109554868797204107977449893951416015625 507] 

; mpf : + 1937826335282372 507
; mpfd: + 1937826335282372 507 (5.9928e+152) class: Pos. norm. non-zero
; hwf : + 1937826335282372 507 (5.9928e+152) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111111010 #b0110111000100111000101011010010110011101010011000100)))
(assert (= r (fp #b0 #b10111111010 #b0110111000100111000101011010010110011101010011000100)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
