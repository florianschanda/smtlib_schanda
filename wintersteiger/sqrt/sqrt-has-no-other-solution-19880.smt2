(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.11421023564081966839012238779105246067047119140625p-950 {+ 514357174673892 -950 (1.17077e-286)}
; 1.11421023564081966839012238779105246067047119140625p-950 S == 1.055561573590484414353340980596840381622314453125p-475
; [HW: 1.055561573590484414353340980596840381622314453125p-475] 

; mpf : + 250227082118224 -475
; mpfd: + 250227082118224 -475 (1.08202e-143) class: Pos. norm. non-zero
; hwf : + 250227082118224 -475 (1.08202e-143) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001001001 #b0001110100111100111000011100101011110010000111100100)))
(assert (= r (fp #b0 #b01000100100 #b0000111000111001010010001000010101111100010001010000)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
