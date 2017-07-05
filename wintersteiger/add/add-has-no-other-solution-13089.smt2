(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6019836427470208750634128591627813875675201416015625p755 {+ 2711093309158617 755 (3.03602e+227)}
; Y = 1.97278317408625269990807282738387584686279296875p539 {+ 4381025940327136 539 (3.55015e+162)}
; 1.6019836427470208750634128591627813875675201416015625p755 + 1.97278317408625269990807282738387584686279296875p539 == 1.6019836427470208750634128591627813875675201416015625p755
; [HW: 1.6019836427470208750634128591627813875675201416015625p755] 

; mpf : + 2711093309158617 755
; mpfd: + 2711093309158617 755 (3.03602e+227) class: Pos. norm. non-zero
; hwf : + 2711093309158617 755 (3.03602e+227) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011110010 #b1001101000011011100110011001101001010011010011011001)))
(assert (= y (fp #b0 #b11000011010 #b1111100100001000010100010110111011001100101011100000)))
(assert (= r (fp #b0 #b11011110010 #b1001101000011011100110011001101001010011010011011001)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
