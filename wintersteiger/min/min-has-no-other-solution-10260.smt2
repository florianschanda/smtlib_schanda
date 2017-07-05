(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.80464777085138194934188504703342914581298828125p417 {+ 3623811400970784 417 (6.10802e+125)}
; Y = 1.85211368912076324022564222104847431182861328125p-674 {+ 3837578892801568 -674 (2.36293e-203)}
; 1.80464777085138194934188504703342914581298828125p417 m 1.85211368912076324022564222104847431182861328125p-674 == 1.85211368912076324022564222104847431182861328125p-674
; [HW: 1.85211368912076324022564222104847431182861328125p-674] 

; mpf : + 3837578892801568 -674
; mpfd: + 3837578892801568 -674 (2.36293e-203) class: Pos. norm. non-zero
; hwf : + 3837578892801568 -674 (2.36293e-203) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110100000 #b1100110111111101011001010111010010011011001000100000)))
(assert (= y (fp #b0 #b00101011101 #b1101101000100100000111110110101100111111011000100000)))
(assert (= r (fp #b0 #b00101011101 #b1101101000100100000111110110101100111111011000100000)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
