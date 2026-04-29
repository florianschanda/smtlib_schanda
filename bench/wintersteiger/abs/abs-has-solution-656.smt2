(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.039622532547259670110406659659929573535919189453125p-680 {+ 178444022815314 -680 (2.07242e-205)}
; 1.039622532547259670110406659659929573535919189453125p-680 | == 1.039622532547259670110406659659929573535919189453125p-680
; [HW: 1.039622532547259670110406659659929573535919189453125p-680] 

; mpf : + 178444022815314 -680
; mpfd: + 178444022815314 -680 (2.07242e-205) class: Pos. norm. non-zero
; hwf : + 178444022815314 -680 (2.07242e-205) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101010111 #b0000101000100100101100111100100101111001101001010010)))
(assert (= r (fp #b0 #b00101010111 #b0000101000100100101100111100100101111001101001010010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
