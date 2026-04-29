(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.796061808169515217059597489424049854278564453125p747 {+ 3585143662636112 747 (1.32962e+225)}
; 1.796061808169515217059597489424049854278564453125p747 | == 1.796061808169515217059597489424049854278564453125p747
; [HW: 1.796061808169515217059597489424049854278564453125p747] 

; mpf : + 3585143662636112 747
; mpfd: + 3585143662636112 747 (1.32962e+225) class: Pos. norm. non-zero
; hwf : + 3585143662636112 747 (1.32962e+225) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011101010 #b1100101111001010101101001110011110101110110001010000)))
(assert (= r (fp #b0 #b11011101010 #b1100101111001010101101001110011110101110110001010000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
