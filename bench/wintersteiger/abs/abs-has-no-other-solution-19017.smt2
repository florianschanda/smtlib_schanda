(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3501407833590792773037492224830202758312225341796875p-625 {- 1576893901463163 -625 (-9.69687e-189)}
; -1.3501407833590792773037492224830202758312225341796875p-625 | == 1.3501407833590792773037492224830202758312225341796875p-625
; [HW: 1.3501407833590792773037492224830202758312225341796875p-625] 

; mpf : + 1576893901463163 -625
; mpfd: + 1576893901463163 -625 (9.69687e-189) class: Pos. norm. non-zero
; hwf : + 1576893901463163 -625 (9.69687e-189) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110001110 #b0101100110100010110100111000110110000101111001111011)))
(assert (= r (fp #b0 #b00110001110 #b0101100110100010110100111000110110000101111001111011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
