(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7791127122565482121530067161074839532375335693359375p-329 {+ 3508811720598207 -329 (1.6268e-099)}
; 1.7791127122565482121530067161074839532375335693359375p-329 S == 1.88632590622964624316182380425743758678436279296875p-165
; [HW: 1.88632590622964624316182380425743758678436279296875p-165] 

; mpf : + 3991657021024652 -165
; mpfd: + 3991657021024652 -165 (4.03336e-050) class: Pos. norm. non-zero
; hwf : + 3991657021024652 -165 (4.03336e-050) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010110110 #b1100011101110011111011100100001100001010001010111111)))
(assert (= r (fp #b0 #b01101011010 #b1110001011100110010000010010110011011010100110001100)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
