(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.485568544896061826676714190398342907428741455078125p-465 {+ 2186806317856738 -465 (1.55935e-140)}
; Y = -zero {- 0 -1023 (-0)}
; 1.485568544896061826676714190398342907428741455078125p-465 M -zero == 1.485568544896061826676714190398342907428741455078125p-465
; [HW: 1.485568544896061826676714190398342907428741455078125p-465] 

; mpf : + 2186806317856738 -465
; mpfd: + 2186806317856738 -465 (1.55935e-140) class: Pos. norm. non-zero
; hwf : + 2186806317856738 -465 (1.55935e-140) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000101110 #b0111110001001110001110000101110001001011011111100010)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b01000101110 #b0111110001001110001110000101110001001011011111100010)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
