(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6201661744581545843146841434645466506481170654296875p925 {- 2792980152197531 925 (-4.59521e+278)}
; -1.6201661744581545843146841434645466506481170654296875p925 | == 1.6201661744581545843146841434645466506481170654296875p925
; [HW: 1.6201661744581545843146841434645466506481170654296875p925] 

; mpf : + 2792980152197531 925
; mpfd: + 2792980152197531 925 (4.59521e+278) class: Pos. norm. non-zero
; hwf : + 2792980152197531 925 (4.59521e+278) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110011100 #b1001111011000011001101011101110101100010000110011011)))
(assert (= r (fp #b0 #b11110011100 #b1001111011000011001101011101110101100010000110011011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
