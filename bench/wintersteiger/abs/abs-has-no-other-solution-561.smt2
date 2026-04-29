(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.623913129708047353716438010451383888721466064453125p764 {+ 2809854938464722 764 (1.57572e+230)}
; 1.623913129708047353716438010451383888721466064453125p764 | == 1.623913129708047353716438010451383888721466064453125p764
; [HW: 1.623913129708047353716438010451383888721466064453125p764] 

; mpf : + 2809854938464722 764
; mpfd: + 2809854938464722 764 (1.57572e+230) class: Pos. norm. non-zero
; hwf : + 2809854938464722 764 (1.57572e+230) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011111011 #b1001111110111000110001010101011110100100000111010010)))
(assert (= r (fp #b0 #b11011111011 #b1001111110111000110001010101011110100100000111010010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
