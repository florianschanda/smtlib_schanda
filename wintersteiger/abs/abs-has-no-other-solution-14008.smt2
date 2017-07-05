(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1019993673079166995876221335493028163909912109375p856 {+ 459364312599960 856 (5.2949e+257)}
; 1.1019993673079166995876221335493028163909912109375p856 | == 1.1019993673079166995876221335493028163909912109375p856
; [HW: 1.1019993673079166995876221335493028163909912109375p856] 

; mpf : + 459364312599960 856
; mpfd: + 459364312599960 856 (5.2949e+257) class: Pos. norm. non-zero
; hwf : + 459364312599960 856 (5.2949e+257) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101010111 #b0001101000011100101000010110101011001100110110011000)))
(assert (= r (fp #b0 #b11101010111 #b0001101000011100101000010110101011001100110110011000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
