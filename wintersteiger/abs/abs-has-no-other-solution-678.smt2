(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.645180415064465773156143768574111163616180419921875p-864 {- 2905634276871070 -864 (-1.33751e-260)}
; -1.645180415064465773156143768574111163616180419921875p-864 | == 1.645180415064465773156143768574111163616180419921875p-864
; [HW: 1.645180415064465773156143768574111163616180419921875p-864] 

; mpf : + 2905634276871070 -864
; mpfd: + 2905634276871070 -864 (1.33751e-260) class: Pos. norm. non-zero
; hwf : + 2905634276871070 -864 (1.33751e-260) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010011111 #b1010010100101010100010110010111010111000101110011110)))
(assert (= r (fp #b0 #b00010011111 #b1010010100101010100010110010111010111000101110011110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
