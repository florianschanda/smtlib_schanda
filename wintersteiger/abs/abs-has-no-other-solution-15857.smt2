(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5337621893775479353649870972731150686740875244140625p-162 {- 2403851197185185 -162 (-2.62361e-049)}
; -1.5337621893775479353649870972731150686740875244140625p-162 | == 1.5337621893775479353649870972731150686740875244140625p-162
; [HW: 1.5337621893775479353649870972731150686740875244140625p-162] 

; mpf : + 2403851197185185 -162
; mpfd: + 2403851197185185 -162 (2.62361e-049) class: Pos. norm. non-zero
; hwf : + 2403851197185185 -162 (2.62361e-049) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101011101 #b1000100010100100101000111000101100110111110010100001)))
(assert (= r (fp #b0 #b01101011101 #b1000100010100100101000111000101100110111110010100001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
