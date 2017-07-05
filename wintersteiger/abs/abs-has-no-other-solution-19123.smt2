(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.150577298828399097629926473018713295459747314453125p909 {- 678139866894034 909 (-4.97946e+273)}
; -1.150577298828399097629926473018713295459747314453125p909 | == 1.150577298828399097629926473018713295459747314453125p909
; [HW: 1.150577298828399097629926473018713295459747314453125p909] 

; mpf : + 678139866894034 909
; mpfd: + 678139866894034 909 (4.97946e+273) class: Pos. norm. non-zero
; hwf : + 678139866894034 909 (4.97946e+273) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110001100 #b0010011010001100001110111101110111111100111011010010)))
(assert (= r (fp #b0 #b11110001100 #b0010011010001100001110111101110111111100111011010010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
