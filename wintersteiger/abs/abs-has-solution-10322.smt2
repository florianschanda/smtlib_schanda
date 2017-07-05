(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.565114135554926289017885210341773927211761474609375p665 {+ 2545047810306966 665 (2.39603e+200)}
; 1.565114135554926289017885210341773927211761474609375p665 | == 1.565114135554926289017885210341773927211761474609375p665
; [HW: 1.565114135554926289017885210341773927211761474609375p665] 

; mpf : + 2545047810306966 665
; mpfd: + 2545047810306966 665 (2.39603e+200) class: Pos. norm. non-zero
; hwf : + 2545047810306966 665 (2.39603e+200) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010011000 #b1001000010101011010100011110101010110111001110010110)))
(assert (= r (fp #b0 #b11010011000 #b1001000010101011010100011110101010110111001110010110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
