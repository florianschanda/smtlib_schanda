(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.88426263340730226758523713215254247188568115234375p-923 {+ 3982364866310780 -923 (2.65739e-278)}
; 1.88426263340730226758523713215254247188568115234375p-923 | == 1.88426263340730226758523713215254247188568115234375p-923
; [HW: 1.88426263340730226758523713215254247188568115234375p-923] 

; mpf : + 3982364866310780 -923
; mpfd: + 3982364866310780 -923 (2.65739e-278) class: Pos. norm. non-zero
; hwf : + 3982364866310780 -923 (2.65739e-278) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001100100 #b1110001001011111000010010011001110001111001001111100)))
(assert (= r (fp #b0 #b00001100100 #b1110001001011111000010010011001110001111001001111100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
