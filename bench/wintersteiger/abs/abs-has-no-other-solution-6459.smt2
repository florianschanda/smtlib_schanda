(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0974021682664538701601486536674201488494873046875p153 {- 438660368709880 153 (-1.25301e+046)}
; -1.0974021682664538701601486536674201488494873046875p153 | == 1.0974021682664538701601486536674201488494873046875p153
; [HW: 1.0974021682664538701601486536674201488494873046875p153] 

; mpf : + 438660368709880 153
; mpfd: + 438660368709880 153 (1.25301e+046) class: Pos. norm. non-zero
; hwf : + 438660368709880 153 (1.25301e+046) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010011000 #b0001100011101111010110010011011101000011100011111000)))
(assert (= r (fp #b0 #b10010011000 #b0001100011101111010110010011011101000011100011111000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
