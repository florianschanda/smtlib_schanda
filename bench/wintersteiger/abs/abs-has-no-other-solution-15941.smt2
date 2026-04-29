(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2627389282441523477018563426099717617034912109375p-373 {+ 1183270939336088 -373 (6.56334e-113)}
; 1.2627389282441523477018563426099717617034912109375p-373 | == 1.2627389282441523477018563426099717617034912109375p-373
; [HW: 1.2627389282441523477018563426099717617034912109375p-373] 

; mpf : + 1183270939336088 -373
; mpfd: + 1183270939336088 -373 (6.56334e-113) class: Pos. norm. non-zero
; hwf : + 1183270939336088 -373 (6.56334e-113) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010001010 #b0100001101000010110110111100000000110001110110011000)))
(assert (= r (fp #b0 #b01010001010 #b0100001101000010110110111100000000110001110110011000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
