(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4619250691446712409060637583024799823760986328125p666 {+ 2080325569273032 666 (4.47613e+200)}
; Y = 1.5818617071415721486715710852877236902713775634765625p-408 {+ 2620472167463945 -408 (2.39293e-123)}
; 1.4619250691446712409060637583024799823760986328125p666 M 1.5818617071415721486715710852877236902713775634765625p-408 == 1.4619250691446712409060637583024799823760986328125p666
; [HW: 1.4619250691446712409060637583024799823760986328125p666] 

; mpf : + 2080325569273032 666
; mpfd: + 2080325569273032 666 (4.47613e+200) class: Pos. norm. non-zero
; hwf : + 2080325569273032 666 (4.47613e+200) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010011001 #b0111011001000000101110001010100100101101110011001000)))
(assert (= y (fp #b0 #b01001100111 #b1001010011110100111000111000101011110111110000001001)))
(assert (= r (fp #b0 #b11010011001 #b0111011001000000101110001010100100101101110011001000)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
