(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.33471753157653250099201613920740783214569091796875p-585 {- 1507433750482444 -585 (-1.054e-176)}
; -1.33471753157653250099201613920740783214569091796875p-585 | == 1.33471753157653250099201613920740783214569091796875p-585
; [HW: 1.33471753157653250099201613920740783214569091796875p-585] 

; mpf : + 1507433750482444 -585
; mpfd: + 1507433750482444 -585 (1.054e-176) class: Pos. norm. non-zero
; hwf : + 1507433750482444 -585 (1.054e-176) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110110110 #b0101010110110000000011000101001110000100111000001100)))
(assert (= r (fp #b0 #b00110110110 #b0101010110110000000011000101001110000100111000001100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
