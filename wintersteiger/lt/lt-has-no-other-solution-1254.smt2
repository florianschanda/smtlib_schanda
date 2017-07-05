(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.927485925885425555037500089383684098720550537109375p-1000 {+ 4177025270208982 -1000 (1.79885e-301)}
; Y = 1.0569413239612022170632599227246828377246856689453125p-634 {+ 256440925373653 -634 (1.48263e-191)}
; 1.927485925885425555037500089383684098720550537109375p-1000 < 1.0569413239612022170632599227246828377246856689453125p-634 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000010111 #b1110110101101111101101111011011100101101100111010110)))
(assert (= y (fp #b0 #b00110000101 #b0000111010010011101101001110010000110100010011010101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
