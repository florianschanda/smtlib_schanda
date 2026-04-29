(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1678129294863108800228701511514373123645782470703125p-96 {+ 755762246702501 -96 (1.47399e-029)}
; 1.1678129294863108800228701511514373123645782470703125p-96 S == 1.0806539360435010177496906180749647319316864013671875p-48
; [HW: 1.0806539360435010177496906180749647319316864013671875p-48] 

; mpf : + 363233036311475 -48
; mpfd: + 363233036311475 -48 (3.83925e-015) class: Pos. norm. non-zero
; hwf : + 363233036311475 -48 (3.83925e-015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110011111 #b0010101011110101110010011100001111111101010110100101)))
(assert (= r (fp #b0 #b01111001111 #b0001010010100101101111001000000110011001101110110011)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
