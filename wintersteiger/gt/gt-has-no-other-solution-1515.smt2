(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0566527336256335001252182337339036166667938232421875p-855 {- 255141230045923 -855 (-4.39831e-258)}
; Y = 1.1283605625432280294972997580771334469318389892578125p197 {+ 578084581638749 197 (2.26651e+059)}
; -1.0566527336256335001252182337339036166667938232421875p-855 > 1.1283605625432280294972997580771334469318389892578125p197 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010101000 #b0000111010000000110010110010011000100110101011100011)))
(assert (= y (fp #b0 #b10011000100 #b0010000011011100001111001110001000111000001001011101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
