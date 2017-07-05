(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5151188992689170742522719592670910060405731201171875p-647 {- 2319889282798995 -647 (-2.59442e-195)}
; -1.5151188992689170742522719592670910060405731201171875p-647 | == 1.5151188992689170742522719592670910060405731201171875p-647
; [HW: 1.5151188992689170742522719592670910060405731201171875p-647] 

; mpf : + 2319889282798995 -647
; mpfd: + 2319889282798995 -647 (2.59442e-195) class: Pos. norm. non-zero
; hwf : + 2319889282798995 -647 (2.59442e-195) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101111000 #b1000001111011110110101010000100111101001010110010011)))
(assert (= r (fp #b0 #b00101111000 #b1000001111011110110101010000100111101001010110010011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
