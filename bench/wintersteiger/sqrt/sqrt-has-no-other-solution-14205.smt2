(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.230229993565929103027656310587190091609954833984375p-109 {+ 1036863713233030 -109 (1.89547e-033)}
; 1.230229993565929103027656310587190091609954833984375p-109 S == 1.5685853458233818269462744865450076758861541748046875p-55
; [HW: 1.5685853458233818269462744865450076758861541748046875p-55] 

; mpf : + 2560680751578507 -55
; mpfd: + 2560680751578507 -55 (4.3537e-017) class: Pos. norm. non-zero
; hwf : + 2560680751578507 -55 (4.3537e-017) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110010010 #b0011101011110000010110100101010011101100100010000110)))
(assert (= r (fp #b0 #b01111001000 #b1001000110001110110011110010100101001011110110001011)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
