(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3173335747779451043726339776185341179370880126953125p-778 {+ 1429143369122101 -778 (8.28627e-235)}
; 1.3173335747779451043726339776185341179370880126953125p-778 S == 1.147751530069964776004098894190974533557891845703125p-389
; [HW: 1.147751530069964776004098894190974533557891845703125p-389] 

; mpf : + 665413735766514 -389
; mpfd: + 665413735766514 -389 (9.1029e-118) class: Pos. norm. non-zero
; hwf : + 665413735766514 -389 (9.1029e-118) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011110101 #b0101000100111100110001011110110110011000000100110101)))
(assert (= r (fp #b0 #b01001111010 #b0010010111010011000010110101010110010101100111110010)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
