(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8218902750784831123809226482990197837352752685546875p345 {+ 3701464736582891 345 (1.30578e+104)}
; 1.8218902750784831123809226482990197837352752685546875p345 | == 1.8218902750784831123809226482990197837352752685546875p345
; [HW: 1.8218902750784831123809226482990197837352752685546875p345] 

; mpf : + 3701464736582891 345
; mpfd: + 3701464736582891 345 (1.30578e+104) class: Pos. norm. non-zero
; hwf : + 3701464736582891 345 (1.30578e+104) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101011000 #b1101001001100111011001101010110001011100110011101011)))
(assert (= r (fp #b0 #b10101011000 #b1101001001100111011001101010110001011100110011101011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
