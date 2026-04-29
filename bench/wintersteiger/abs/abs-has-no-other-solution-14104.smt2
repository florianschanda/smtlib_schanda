(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8588459449561887115720537622109986841678619384765625p-112 {- 3867898277673353 -112 (-3.58001e-034)}
; -1.8588459449561887115720537622109986841678619384765625p-112 | == 1.8588459449561887115720537622109986841678619384765625p-112
; [HW: 1.8588459449561887115720537622109986841678619384765625p-112] 

; mpf : + 3867898277673353 -112
; mpfd: + 3867898277673353 -112 (3.58001e-034) class: Pos. norm. non-zero
; hwf : + 3867898277673353 -112 (3.58001e-034) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110001111 #b1101101111011101010100111110110111100011100110001001)))
(assert (= r (fp #b0 #b01110001111 #b1101101111011101010100111110110111100011100110001001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
