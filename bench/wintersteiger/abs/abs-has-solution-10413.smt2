(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6007738557300708048813930872711353003978729248046875p-346 {- 2705644912799883 -346 (-1.11674e-104)}
; -1.6007738557300708048813930872711353003978729248046875p-346 | == 1.6007738557300708048813930872711353003978729248046875p-346
; [HW: 1.6007738557300708048813930872711353003978729248046875p-346] 

; mpf : + 2705644912799883 -346
; mpfd: + 2705644912799883 -346 (1.11674e-104) class: Pos. norm. non-zero
; hwf : + 2705644912799883 -346 (1.11674e-104) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010100101 #b1001100111001100010100001011111010100111000010001011)))
(assert (= r (fp #b0 #b01010100101 #b1001100111001100010100001011111010100111000010001011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
