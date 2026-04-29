(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.84763843925159232384203278343193233013153076171875p472 {- 3817424159158380 472 (-2.25307e+142)}
; -1.84763843925159232384203278343193233013153076171875p472 | == 1.84763843925159232384203278343193233013153076171875p472
; [HW: 1.84763843925159232384203278343193233013153076171875p472] 

; mpf : + 3817424159158380 472
; mpfd: + 3817424159158380 472 (2.25307e+142) class: Pos. norm. non-zero
; hwf : + 3817424159158380 472 (2.25307e+142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111010111 #b1101100011111110110101010010111101101011000001101100)))
(assert (= r (fp #b0 #b10111010111 #b1101100011111110110101010010111101101011000001101100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
