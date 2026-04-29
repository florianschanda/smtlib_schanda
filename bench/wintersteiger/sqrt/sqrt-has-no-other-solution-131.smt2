(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.028574461671986295385750054265372455120086669921875p-638 {+ 128687934938270 -638 (9.01776e-193)}
; 1.028574461671986295385750054265372455120086669921875p-638 S == 1.01418660101185853505967315868474543094635009765625p-319
; [HW: 1.01418660101185853505967315868474543094635009765625p-319] 

; mpf : + 63890771030660 -319
; mpfd: + 63890771030660 -319 (9.49619e-097) class: Pos. norm. non-zero
; hwf : + 63890771030660 -319 (9.49619e-097) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110000001 #b0000011101010000101001111110101001100001110010011110)))
(assert (= r (fp #b0 #b01011000000 #b0000001110100001101110111010101101100011001010000100)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
