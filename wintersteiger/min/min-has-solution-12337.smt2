(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.18538006447073218652121795457787811756134033203125p-476 {+ 834877589272308 -476 (6.07547e-144)}
; Y = 1.05729351553912920280708931386470794677734375p1008 {+ 258027055232768 1008 (2.90022e+303)}
; 1.18538006447073218652121795457787811756134033203125p-476 m 1.05729351553912920280708931386470794677734375p1008 == 1.18538006447073218652121795457787811756134033203125p-476
; [HW: 1.18538006447073218652121795457787811756134033203125p-476] 

; mpf : + 834877589272308 -476
; mpfd: + 834877589272308 -476 (6.07547e-144) class: Pos. norm. non-zero
; hwf : + 834877589272308 -476 (6.07547e-144) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000100011 #b0010111101110101000100010110001000111011011011110100)))
(assert (= y (fp #b0 #b11111101111 #b0000111010101010110010011010111110000011011100000000)))
(assert (= r (fp #b0 #b01000100011 #b0010111101110101000100010110001000111011011011110100)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
