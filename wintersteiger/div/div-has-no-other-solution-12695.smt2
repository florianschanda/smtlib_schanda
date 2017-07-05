(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1917565820871962589677650612429715692996978759765625p-165 {+ 863594871633737 -165 (2.54823e-050)}
; Y = 1.917205488518226363936491907224990427494049072265625p-16 {+ 4130726296312858 -16 (2.92542e-005)}
; 1.1917565820871962589677650612429715692996978759765625p-165 / 1.917205488518226363936491907224990427494049072265625p-16 == 1.24322258539775365449031596654094755649566650390625p-150
; [HW: 1.24322258539775365449031596654094755649566650390625p-150] 

; mpf : + 1095377144965412 -150
; mpfd: + 1095377144965412 -150 (8.71063e-046) class: Pos. norm. non-zero
; hwf : + 1095377144965412 -150 (8.71063e-046) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101011010 #b0011000100010110111101011001100011011011011101001001)))
(assert (= y (fp #b0 #b01111101111 #b1110101011001101111110101001100011100101110000011010)))
(assert (= r (fp #b0 #b01101101001 #b0011111001000011110101011101100111101110100100100100)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
