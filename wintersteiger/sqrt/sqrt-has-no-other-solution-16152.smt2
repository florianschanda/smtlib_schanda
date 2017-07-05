(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7455982064000867826081275779870338737964630126953125p-417 {+ 3357875804511541 -417 (5.15746e-126)}
; 1.7455982064000867826081275779870338737964630126953125p-417 S == 1.8684743543330137871549823103123344480991363525390625p-209
; [HW: 1.8684743543330137871549823103123344480991363525390625p-209] 

; mpf : + 3911260778554993 -209
; mpfd: + 3911260778554993 -209 (2.271e-063) class: Pos. norm. non-zero
; hwf : + 3911260778554993 -209 (2.271e-063) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001011110 #b1011111011011111100001100010100001110001110100110101)))
(assert (= r (fp #b0 #b01100101110 #b1101111001010100010101011101010101000110011001110001)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
