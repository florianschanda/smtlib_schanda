(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8034446955815262025879519569571129977703094482421875p28 {- 3618393231633763 28 (-4.84108e+008)}
; -1.8034446955815262025879519569571129977703094482421875p28 | == 1.8034446955815262025879519569571129977703094482421875p28
; [HW: 1.8034446955815262025879519569571129977703094482421875p28] 

; mpf : + 3618393231633763 28
; mpfd: + 3618393231633763 28 (4.84108e+008) class: Pos. norm. non-zero
; hwf : + 3618393231633763 28 (4.84108e+008) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000011011 #b1100110110101110100011010011001110101010110101100011)))
(assert (= r (fp #b0 #b10000011011 #b1100110110101110100011010011001110101010110101100011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
