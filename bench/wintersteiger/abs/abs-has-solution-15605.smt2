(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6436229155822867920022645193967036902904510498046875p-700 {+ 2898619922783499 -700 (3.12468e-211)}
; 1.6436229155822867920022645193967036902904510498046875p-700 | == 1.6436229155822867920022645193967036902904510498046875p-700
; [HW: 1.6436229155822867920022645193967036902904510498046875p-700] 

; mpf : + 2898619922783499 -700
; mpfd: + 2898619922783499 -700 (3.12468e-211) class: Pos. norm. non-zero
; hwf : + 2898619922783499 -700 (3.12468e-211) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101000011 #b1010010011000100011110001010110101100001110100001011)))
(assert (= r (fp #b0 #b00101000011 #b1010010011000100011110001010110101100001110100001011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
