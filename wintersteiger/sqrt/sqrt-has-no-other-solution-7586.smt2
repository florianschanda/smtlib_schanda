(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.75747127211744658126235663075931370258331298828125p-70 {+ 3411347338851988 -70 (1.48864e-021)}
; 1.75747127211744658126235663075931370258331298828125p-70 S == 1.3256965233858941655142871240968815982341766357421875p-35
; [HW: 1.3256965233858941655142871240968815982341766357421875p-35] 

; mpf : + 1466806741356579 -35
; mpfd: + 1466806741356579 -35 (3.85828e-011) class: Pos. norm. non-zero
; hwf : + 1466806741356579 -35 (3.85828e-011) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110111001 #b1100000111101001101000110010010101100111011010010100)))
(assert (= r (fp #b0 #b01111011100 #b0101001101100000110110001110110001011101000000100011)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
