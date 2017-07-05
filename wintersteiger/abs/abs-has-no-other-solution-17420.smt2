(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.245884794045640564519317194935865700244903564453125p-346 {+ 1107366666840018 -346 (8.69159e-105)}
; 1.245884794045640564519317194935865700244903564453125p-346 | == 1.245884794045640564519317194935865700244903564453125p-346
; [HW: 1.245884794045640564519317194935865700244903564453125p-346] 

; mpf : + 1107366666840018 -346
; mpfd: + 1107366666840018 -346 (8.69159e-105) class: Pos. norm. non-zero
; hwf : + 1107366666840018 -346 (8.69159e-105) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010100101 #b0011111011110010010011100100110100000010011111010010)))
(assert (= r (fp #b0 #b01010100101 #b0011111011110010010011100100110100000010011111010010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
