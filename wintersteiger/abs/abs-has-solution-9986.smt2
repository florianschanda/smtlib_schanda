(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2374987603383587053684777856688015162944793701171875p10 {- 1069599328560787 10 (-1267.2)}
; -1.2374987603383587053684777856688015162944793701171875p10 | == 1.2374987603383587053684777856688015162944793701171875p10
; [HW: 1.2374987603383587053684777856688015162944793701171875p10] 

; mpf : + 1069599328560787 10
; mpfd: + 1069599328560787 10 (1267.2) class: Pos. norm. non-zero
; hwf : + 1069599328560787 10 (1267.2) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000001001 #b0011110011001100101110000000000001111110011010010011)))
(assert (= r (fp #b0 #b10000001001 #b0011110011001100101110000000000001111110011010010011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
