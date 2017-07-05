(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.257579376789494052246709543396718800067901611328125p-486 {+ 1160034385327490 -486 (6.29445e-147)}
; Y = -1.58229459214204126737968181259930133819580078125p-51 {- 2622421708190752 -51 (-7.0268e-016)}
; 1.257579376789494052246709543396718800067901611328125p-486 m -1.58229459214204126737968181259930133819580078125p-51 == -1.58229459214204126737968181259930133819580078125p-51
; [HW: -1.58229459214204126737968181259930133819580078125p-51] 

; mpf : - 2622421708190752 -51
; mpfd: - 2622421708190752 -51 (-7.0268e-016) class: Neg. norm. non-zero
; hwf : - 2622421708190752 -51 (-7.0268e-016) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000011001 #b0100000111110000101110001101011101101111010110000010)))
(assert (= y (fp #b1 #b01111001100 #b1001010100010001010000100010010111100011010000100000)))
(assert (= r (fp #b1 #b01111001100 #b1001010100010001010000100010010111100011010000100000)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
