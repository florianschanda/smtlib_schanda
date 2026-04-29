(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4794360726916087056537207899964414536952972412109375p510 {+ 2159188118321903 510 (4.959e+153)}
; 1.4794360726916087056537207899964414536952972412109375p510 S == 1.2163207112812017829384103606571443378925323486328125p255
; [HW: 1.2163207112812017829384103606571443378925323486328125p255] 

; mpf : + 974221874718541 255
; mpfd: + 974221874718541 255 (7.04202e+076) class: Pos. norm. non-zero
; hwf : + 974221874718541 255 (7.04202e+076) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111111101 #b0111101010111100010100101000110010111011101011101111)))
(assert (= r (fp #b0 #b10011111110 #b0011011101100000110010110100110001100110011101001101)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
