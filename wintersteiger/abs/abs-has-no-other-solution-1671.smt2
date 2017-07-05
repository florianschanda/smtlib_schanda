(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.658505329563677577198177459649741649627685546875p-218 {- 2965644356844464 -218 (-3.93711e-066)}
; -1.658505329563677577198177459649741649627685546875p-218 | == 1.658505329563677577198177459649741649627685546875p-218
; [HW: 1.658505329563677577198177459649741649627685546875p-218] 

; mpf : + 2965644356844464 -218
; mpfd: + 2965644356844464 -218 (3.93711e-066) class: Pos. norm. non-zero
; hwf : + 2965644356844464 -218 (3.93711e-066) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100100101 #b1010100010010011110011100010011010110111101110110000)))
(assert (= r (fp #b0 #b01100100101 #b1010100010010011110011100010011010110111101110110000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
