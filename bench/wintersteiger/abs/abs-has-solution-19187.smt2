(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.94675219491131645810355621506460011005401611328125p-319 {- 4263792832214804 -319 (-1.82281e-096)}
; -1.94675219491131645810355621506460011005401611328125p-319 | == 1.94675219491131645810355621506460011005401611328125p-319
; [HW: 1.94675219491131645810355621506460011005401611328125p-319] 

; mpf : + 4263792832214804 -319
; mpfd: + 4263792832214804 -319 (1.82281e-096) class: Pos. norm. non-zero
; hwf : + 4263792832214804 -319 (1.82281e-096) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011000000 #b1111001001011110010110100001001010001111011100010100)))
(assert (= r (fp #b0 #b01011000000 #b1111001001011110010110100001001010001111011100010100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
